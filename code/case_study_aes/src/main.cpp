#include "aes_test.h"
#include "armory/fault_tracer.h"
#include "fault_simulator/fault_models.h"
#include "fault_simulator/fault_printing.h"
#include "fault_simulator/fault_simulator.h"
#include "termcolor.h"

#include <chrono>
#include <cstring>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>

using namespace armory;

static bool compute_timeout(const Emulator& main_emulator, fault_simulator::Configuration& ctx, u32 limit, u32 grace_time)
{
    Emulator timeout_emu(main_emulator);

    timeout_emu.add_before_fetch_hook([&](Emulator& emu, u32 address, u32, void*) {
        for (const auto& end : ctx.faulting_context.end_addresses)
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

    ctx.faulting_context.emulation_timeout = timeout_emu.get_emulated_time() + grace_time;
    return true;
}

bool ends_with(const std::string& s, const std::string& end)
{
    if (s.length() >= end.length())
    {
        return (0 == s.compare(s.length() - end.length(), end.length(), end));
    }
    else
    {
        return false;
    }
}

bool starts_with(const std::string& s, const std::string& start)
{
    if (s.length() >= start.length())
    {
        return (0 == s.compare(0, start.length(), start));
    }
    else
    {
        return false;
    }
}

std::vector<std::string> split(const std::string& s, const char delim, bool obey_brackets = false)
{
    std::vector<std::string> result;
    std::string item = "";

    if (obey_brackets)
    {
        int bracket_level = 0;

        for (size_t i = 0; i < s.length(); ++i)
        {
            char c = s.at(i);
            switch (c)
            {
                case '(':
                case '{':
                case '[':
                    ++bracket_level;
                    break;
                case ')':
                case '}':
                case ']':
                    --bracket_level;
                    break;
                default:
                    break;
            }
            if (bracket_level < 0)
            {
                bracket_level = 0;
            }
            if (c == delim)
            {
                // No constant expression, therefore not usable in switch case
                if (bracket_level == 0)
                {
                    result.push_back(item);
                    item = "";
                }
                else
                {
                    item.push_back(c);
                }
            }
            else
            {
                item.push_back(c);
            }
        }
        if (!item.empty())
        {
            result.push_back(item);
        }
    }
    else
    {
        std::stringstream ss(s);
        while (std::getline(ss, item, delim))
        {
            result.push_back(item);
        }
    }
    if (s.back() == delim)
    {
        result.push_back("");
    }
    return result;
}

std::string trim(const std::string& s, const char* to_remove = " \t\r\n")
{
    size_t start = s.find_first_not_of(to_remove);
    size_t end   = s.find_last_not_of(to_remove);

    if (start != std::string::npos)
    {
        return s.substr(start, end - start + 1);
    }
    else
    {
        return "";
    }
}

int main(int argc, char** argv)
{
    // std::string fault_report = argv[1];

    fault_simulator::Configuration config;
    try
    {
        config = fault_simulator::parse_arguments(argc, argv);
        // config = fault_simulator::parse_arguments(argc - 1, argv + 1);
    }
    catch (std::exception& ex)
    {
        std::cout << ex.what() << std::endl;
        return 1;
    }

    /* clang-format off */
    u8 plaintext[16] = {0x67, 0x45, 0x8b, 0x6b, 0x69, 0x98, 0x3c, 0x64, 0x51, 0xdc, 0xb0, 0x74, 0x4a, 0x94, 0xe8, 0x2a, };
    u8 key[16] = {0xc6, 0x23, 0x7b, 0x32, 0x73, 0x48, 0x33, 0x66, 0xff, 0x5c, 0x49, 0x19, 0xec, 0x58, 0x55, 0x62, };
    u8 ciphertext[16] = {0x46, 0x38, 0x83, 0x97, 0xe4, 0xe4, 0xd5, 0x03, 0x64, 0xaf, 0x54, 0x4f, 0x08, 0x02, 0x92, 0x2c, };
    /* clang-format on */
    aes_test::initialize(key, plaintext);

    struct AesDfaExploitabilityModel : ExploitabilityModel
    {
        AesDfaExploitabilityModel(fault_simulator::Configuration& config) : m_config(config), m_cnt{0} {};

        Decision evaluate(const Emulator& emu, const Context&, u32 address) override
        {
            if (m_config.end_address_symbols[address] == "report_done")
            {
                m_cnt++;
                if (m_cnt == 2)
                {
                    u8 computed[16];
                    emu.read_memory(m_config.ram.offset + 16, computed, 16);
                    if (aes_test::test_aes_output(computed))
                    {
                        return Decision::EXPLOITABLE;
                    }
                }
                else
                {
                    return Decision::CONTINUE_SIMULATION;
                }
            }
            return Decision::NOT_EXPLOITABLE;
        };

        std::unique_ptr<ExploitabilityModel> clone() override
        {
            return std::make_unique<AesDfaExploitabilityModel>(*this);
        }

        fault_simulator::Configuration& m_config;
        u32 m_cnt;
    };

    AesDfaExploitabilityModel model(config);
    config.faulting_context.exploitability_model = &model;

    Emulator main_emulator(config.arch);
    main_emulator.set_flash_region(config.flash.offset, config.flash.size);
    main_emulator.set_ram_region(config.ram.offset, config.ram.size);
    for (const auto& section : config.binary)
    {
        main_emulator.write_memory(section.offset, section.bytes.data(), section.bytes.size());
    }
    main_emulator.write_register(Register::SP, config.ram.offset + config.ram.size);
    main_emulator.write_register(Register::PC, config.start_address);
    main_emulator.write_register(Register::LR, 0xFFFFFFFF);

    main_emulator.write_register(Register::R0, config.ram.offset);
    main_emulator.write_register(Register::R1, config.ram.offset + 16);
    main_emulator.write_memory(config.ram.offset, key, 16);
    main_emulator.write_memory(config.ram.offset + 16, plaintext, 16);

    // test correctness:
    {
        Emulator emu(main_emulator);

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
        if (executed != "report_done")
        {
            std::cout << "ERROR: AES did not finish successfully" << std::endl;
            return 1;
        }
        u8 computed[16];
        emu.read_memory(config.ram.offset + 16, computed, 16);
        if (std::memcmp(computed, ciphertext, 16) != 0)
        {
            std::cout << "ERROR: ciphertexts don't match" << std::endl;
            return 1;
        }
        std::cout << "Test passed!" << std::endl;
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

        std::cout << "no timeout set, simulation without any faults executes " << std::dec << config.faulting_context.emulation_timeout - grace_time << " instructions" << std::endl;
        std::cout << "setting timeout to " << config.faulting_context.emulation_timeout << " instructions" << std::endl;
    }

    {
        Emulator timeout_emu(main_emulator);

        u32 start_time = 0;
        u32 end_time   = 0;
        bool seen[12]  = {
            false,
        };

        timeout_emu.add_before_fetch_hook([&](Emulator& emu, u32, u32, void*) {
            u8 computed[16];
            emu.read_memory(config.ram.offset + 16, computed, 16);

            if (start_time == 0 && std::memcmp(computed, aes_test::state_after_round7_mixcolumns, 16) == 0)
            {
                start_time = emu.get_time();
            }

            if (start_time != 0)
            {
                for (u32 i = 0; i < 11; ++i)
                {
                    if (!seen[i] && std::memcmp(computed, aes_test::state_before_sbox_in_round[i], 16) == 0)
                    {
                        std::cout << "round " << std::dec << i << " start at " << emu.get_time() << std::endl;
                        seen[i] = true;
                    }
                }
            }

            if (end_time == 0 && std::memcmp(computed, aes_test::state_before_sbox_in_round[10], 16) == 0)
            {
                end_time = emu.get_time();
                emu.stop_emulation();
            }
        });

        timeout_emu.emulate(config.faulting_context.emulation_timeout);

        if (start_time == 0)
        {
            std::cout << "Could not find 7th round intermediate value." << std::endl;
            return -1;
        }

        if (end_time == 0)
        {
            std::cout << "Could not find 10th round intermediate value." << std::endl;
            return -1;
        }

        config.faulting_context.ignore_time_ranges.push_back({end_time, (u32)-1});
        config.faulting_context.emulation_timeout -= start_time;
        main_emulator.emulate(start_time);
        std::cout << "advanced " << std::dec << start_time << " instructions until after mixcolumns of 7th round" << std::endl;
        std::cout << "faults are injected until " << std::dec << end_time << " instructions" << std::endl;
    }

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
