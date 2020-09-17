#include "armory/fault_tracer.h"
#include "fault_simulator/fault_models.h"
#include "fault_simulator/fault_simulator.h"
#include "termcolor.h"

#include <chrono>
#include <cstring>
#include <iostream>

using namespace armory;

static bool compute_timeout(const Emulator& main_emulator, fault_simulator::Configuration& config, u32 limit, u32 grace_time)
{
    Emulator timeout_emu(main_emulator);

    timeout_emu.add_before_fetch_hook([&](Emulator& emu, u32 address, u32, void*) {
        for (const auto& end : config.faulting_context.end_addresses)
        {
            if (address == end)
            {
                emu.stop_emulation();
            }
        }
    });

    if (timeout_emu.emulate(limit) == ReturnCode::MAX_INSTRUCTIONS_REACHED)
    {
        return false;
    }

    config.faulting_context.emulation_timeout = timeout_emu.get_emulated_time() + grace_time;
    return true;
}

int main(int argc, char** argv)
{
    fault_simulator::Configuration config;
    try
    {
        config = fault_simulator::parse_arguments(argc, argv);
    }
    catch (std::exception& ex)
    {
        std::cout << ex.what() << std::endl;
        return 1;
    }

    struct SecureBootExploitabilityModel : ExploitabilityModel
    {
        SecureBootExploitabilityModel(fault_simulator::Configuration& config) : m_config(config)
        {
            m_cnt = 0;
        };

        std::unique_ptr<ExploitabilityModel> clone() override
        {
            return std::make_unique<SecureBootExploitabilityModel>(*this);
        }

        Decision evaluate(const Emulator&, const Context&, u32 address) override
        {
            if (m_config.end_address_symbols[address] == "execute_firmware")
            {
                m_cnt++;
                if (m_cnt == 2)
                {
                    return Decision::EXPLOITABLE;
                }
                else
                {
                    return Decision::CONTINUE_SIMULATION;
                }
            }
            return Decision::NOT_EXPLOITABLE;
        };

        fault_simulator::Configuration& m_config;
        u32 m_cnt;
    };

    SecureBootExploitabilityModel model(config);
    config.faulting_context.exploitability_model = &model;

    Emulator main_emulator(config.arch);
    main_emulator.set_flash_region(config.flash.offset, config.flash.size);
    main_emulator.set_ram_region(config.ram.offset, config.ram.size);
    for (const auto& s : config.binary)
    {
        main_emulator.write_memory(s.offset, s.bytes.data(), s.bytes.size());
    }
    main_emulator.write_register(Register::SP, config.ram.offset + config.ram.size);
    main_emulator.write_register(Register::PC, config.start_address);
    main_emulator.write_register(Register::LR, 0xFFFFFFFF);

    // test correctness:
    {
        /* clang-format off */
        u8 firmware[128] = {
        0x67, 0x45, 0x8b, 0x6b, 0xc6, 0x23, 0x7b, 0x32, 0x69, 0x98, 0x3c, 0x64, 0x73, 0x48, 0x33, 0x66,
        0x51, 0xdc, 0xb0, 0x74, 0xff, 0x5c, 0x49, 0x19, 0x4a, 0x94, 0xe8, 0x2a, 0xec, 0x58, 0x55, 0x62,
        0x29, 0x1f, 0x8e, 0x23, 0xcd, 0x7c, 0xe8, 0x46, 0xba, 0x58, 0x1b, 0x3d, 0xab, 0xd7, 0x7e, 0x50,
        0xf2, 0x41, 0xb1, 0x2e, 0xfb, 0x1e, 0xb7, 0x41, 0xe3, 0xa9, 0xe2, 0x79, 0x46, 0xe1, 0x45, 0x75,
        0x7c, 0x00, 0x5f, 0x51, 0xc2, 0x62, 0xd0, 0x5b, 0x54, 0x08, 0x20, 0x12, 0xf8, 0x27, 0xb1, 0x4d,
        0x1b, 0x23, 0x16, 0x02, 0xe8, 0xe9, 0x16, 0x1f, 0xe7, 0xcd, 0x90, 0x11, 0x8d, 0x43, 0xef, 0x66,
        0x76, 0x0f, 0x0e, 0x14, 0x5a, 0x25, 0x52, 0x33, 0x2e, 0xf9, 0x9c, 0x10, 0x63, 0x72, 0xed, 0x0d,
        0x33, 0xc2, 0xdc, 0x7f, 0x9f, 0xd7, 0xef, 0x1b, 0xc9, 0xc4, 0xa7, 0x41, 0x9a, 0x07, 0x68, 0x6b,
        };
        u8 correct_hash[32] = {
        0xf2, 0x60, 0x9f, 0x26, 0x98, 0x6b, 0x3f, 0xd2, 0xdd, 0x21, 0x8b, 0x1d, 0xb6, 0x37, 0x41, 0x70,
        0x0b, 0x02, 0xe3, 0x27, 0x42, 0x9a, 0x2b, 0xb5, 0xb0, 0xbe, 0xfb, 0x76, 0x02, 0x45, 0x2b, 0xbe,
        };
        /* clang-format on */

        {
            Emulator emu(main_emulator);

            emu.write_register(Register::R0, config.ram.offset);
            u32 firmware_length = 128;
            for (u32 i = 0; i < firmware_length; i++)
            {
                emu.write_memory(config.ram.offset + i, firmware + i, 1);
            }
            emu.write_register(Register::R1, firmware_length);
            emu.write_register(Register::R2, config.ram.offset + firmware_length);

            for (u32 i = 0; i < 32; i++)
            {
                emu.write_memory(config.ram.offset + firmware_length + i, correct_hash + i, 1);
            }

            std::string executed;
            bool in_sha    = false;
            bool sha_found = false;

            emu.add_before_fetch_hook([&](Emulator&, u32 address, u32, void*) {
                if (!sha_found && !in_sha && address < config.start_address)
                {
                    std::cout << "sha starts at " << emu.get_time() << std::endl;
                    in_sha    = true;
                    sha_found = true;
                }
                if (in_sha && address > config.start_address)
                {
                    std::cout << "sha done at " << emu.get_time() << std::endl;
                    in_sha = false;
                }
                auto it = config.end_address_symbols.find(address);
                if (it != config.end_address_symbols.end())
                {
                    executed = it->second;
                    emu.stop_emulation();
                }
            });

            auto ret = emu.emulate(1000000);
            if (ret != ReturnCode::STOP_EMULATION_CALLED)
            {
                std::cout << "ERROR: " << ret << std::endl;
                return 1;
            }
            if (executed != "execute_firmware")
            {
                std::cout << "ERROR: correct firmware was not executed" << std::endl;
                return 1;
            }
        }
        std::cout << "Positive test passed!" << std::endl;

        {
            Emulator emu(main_emulator);

            emu.write_register(Register::R0, config.ram.offset);
            u32 firmware_length = 128;
            for (u32 i = 0; i < firmware_length; i++)
            {
                emu.write_memory(config.ram.offset + i, firmware + i, 1);
            }
            emu.write_register(Register::R1, firmware_length);
            emu.write_register(Register::R2, config.ram.offset + firmware_length);

            for (u32 i = 0; i < 32; i++)
            {
                correct_hash[i] ^= 0xFF;
                emu.write_memory(config.ram.offset + firmware_length + i, correct_hash + i, 1);
            }

            std::string executed;
            emu.add_before_fetch_hook([&](Emulator&, u32 address, u32, void*) {
                auto it = config.end_address_symbols.find(address);
                if (it != config.end_address_symbols.end())
                {
                    executed = it->second;
                    emu.stop_emulation();
                }
            });

            auto ret = emu.emulate(1000000);
            if (ret != ReturnCode::STOP_EMULATION_CALLED)
            {
                std::cout << "ERROR: " << ret << std::endl;
                return 1;
            }
            if (executed == "execute_firmware")
            {
                std::cout << "ERROR: incorrect firmware was executed" << std::endl;
                return 1;
            }
        }
        std::cout << "Negative test passed!" << std::endl;
    }

    // initialize data for verify_and_run_firmware(u8* firmware, u32 firmware_length, u8 correct_hash[16])
    std::srand(0);
    main_emulator.write_register(Register::R0, config.ram.offset);
    u32 firmware_length = 128;
    for (u32 i = 0; i < firmware_length; i += 4)
    {
        u32 val = std::rand();
        main_emulator.write_memory(config.ram.offset + i, (u8*)&val, 4);
    }
    main_emulator.write_register(Register::R1, firmware_length);
    main_emulator.write_register(Register::R2, config.ram.offset + firmware_length);

    for (u32 i = 0; i < 32; i += 4)
    {
        u32 val = std::rand();
        main_emulator.write_memory(config.ram.offset + firmware_length + i, (u8*)&val, 4);
    }

    // auto-determine timeout
    if (config.faulting_context.emulation_timeout == 0)
    {
        u32 limit      = 1000000;
        u32 grace_time = 1000;
        if (!compute_timeout(main_emulator, config, limit, grace_time))
        {
            std::cout << termcolor::bright_red << "ERROR:" << termcolor::reset << " execution without faults executes more than " << limit << " instructions." << std::endl;
            std::cout << "Please provide a timeout via --timeout" << std::endl;
            return -1;
        }

        std::cout << "no timeout set, simulation without any faults executes " << config.faulting_context.emulation_timeout - grace_time << " instructions" << std::endl;
        std::cout << "setting timeout to " << config.faulting_context.emulation_timeout << " instructions" << std::endl;
    }

    std::cout << "simulation begin at " << main_emulator.get_time() << std::endl;

    u32 total_faults = 0;
    auto start       = std::chrono::steady_clock::now();

#if true

    // first order fault models
    for (const auto& spec : fault_models::all_fault_models)
    {
        auto exploitable_faults = fault_simulator::find_exploitable_faults(main_emulator, config, {std::make_pair(spec, 1)});
        total_faults += exploitable_faults.size();
    }

#else

    // first order fault models
    for (const auto& spec : fault_models::non_single_bit_fault_models)
    {
        auto exploitable_faults = fault_simulator::find_exploitable_faults(main_emulator, config, {std::make_pair(spec, 2)});
        total_faults += exploitable_faults.size();
    }

#endif

    auto end       = std::chrono::steady_clock::now();
    double seconds = std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count() / 1000.0;

    std::cout << "_______________________________________" << std::endl;
    std::cout << "All tested models combined: " << std::dec << total_faults << " exploitable faults" << std::endl;
    std::cout << "Total time: " << seconds << " seconds" << std::endl << std::endl;

    return 0;
}
