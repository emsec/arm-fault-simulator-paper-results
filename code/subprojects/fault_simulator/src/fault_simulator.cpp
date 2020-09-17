#include "fault_simulator/fault_simulator.h"

#include "armory/fault_simulator.h"
#include "armory/fault_tracer.h"
#include "fault_simulator/configuration.h"
#include "fault_simulator/fault_models.h"
#include "fault_simulator/fault_printing.h"
#include "fault_simulator/termcolor.h"

#include <chrono>
#include <cstring>
#include <fstream>
#include <iomanip>
#include <sstream>
#include <tuple>

namespace fault_simulator
{
    using namespace armory;

    InstructionFault build_fault(const InstructionFaultModel* model, u32 fault_model_iteration, u32 time, u32 address, u32 instr_size)
    {
        InstructionFault f(model, time, fault_model_iteration);
        f.address    = address;
        f.instr_size = instr_size;
        return f;
    }

    RegisterFault build_fault(const RegisterFaultModel* model, u32 fault_model_iteration, u32 time, Register reg)
    {
        RegisterFault f(model, time, fault_model_iteration);
        f.reg = reg;
        return f;
    }

    std::vector<FaultCombination> find_exploitable_faults(const Emulator& emu,
                                                          const Configuration& ctx,
                                                          const std::vector<std::pair<const FaultModel*, u32>>& fault_injectors,
                                                          u32 max_simulatenous_faults,
                                                          bool verify_faults)
    {
        Disassembler disasm(ctx.arch);
        FaultSimulator simulator(ctx.faulting_context);
        FaultTracer tracer(ctx.faulting_context);

        simulator.enable_progress_printing(true);
        simulator.set_number_of_threads(ctx.num_threads);

        std::cout << "=====================================" << std::endl;
        std::cout << "Testing any combination";
        if (max_simulatenous_faults != 0)
        {
            std::cout << " (max " << std::dec << max_simulatenous_faults << ")";
        }
        std::cout << " of:" << std::endl;

        for (const auto& [model, amount] : fault_injectors)
        {
            std::cout << std::dec << "  " << amount << "x '" << model->get_name() << "'" << std::endl;
        }

        auto start              = std::chrono::steady_clock::now();
        auto exploitable_faults = simulator.simulate_faults(emu, fault_injectors, max_simulatenous_faults);
        auto end                = std::chrono::steady_clock::now();

        std::vector<FaultCombination> failed_faults;

        if (verify_faults)
        {
            std::cerr << "Verifying results..." << std::flush;
        }

        for (auto& faults : exploitable_faults)
        {
            u32 total_size = faults.instruction_faults.size() + faults.register_faults.size();
            std::cout << "Exploitable with " << total_size << " fault" << (total_size > 1 ? "s" : "") << std::endl;
            for (auto f : faults.get_sorted_faults())
            {
                auto i_f = dynamic_cast<const InstructionFault*>(f);
                auto r_f = dynamic_cast<const RegisterFault*>(f);
                std::cout << "  ";
                if (i_f)
                {
                    print_instruction_fault(*i_f, ctx, disasm);
                }
                else
                {
                    print_register_fault(*r_f);
                }
            }

            if (verify_faults && !tracer.verify(emu, faults))
            {
                failed_faults.push_back(faults);
            }
        }

        if (verify_faults)
        {
            std::cerr << "\r                         \r" << std::flush;
        }

        if (!failed_faults.empty())
        {
            std::cout << "=====================================" << std::endl;
            for (const auto& faults : failed_faults)
            {
                std::cout << termcolor::bright_red << "ERROR: not verifiable" << termcolor::reset << std::endl;
                for (const auto& f : faults.instruction_faults)
                {
                    std::cout << "  ";
                    print_instruction_fault(f, ctx, disasm);
                }
                for (const auto& f : faults.register_faults)
                {
                    std::cout << "  ";
                    print_register_fault(f);
                }
            }
        }

        std::cout << "-------------------------------------" << std::endl;
        std::cout << "Total: " << std::dec << exploitable_faults.size() << " exploitable faults";
        if (!failed_faults.empty())
        {
            std::cout << " (" << failed_faults.size() << " not verifiable)";
        }
        std::cout << std::endl;

        double seconds = std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count() / 1000.0;
        std::cout << "Elapsed time: " << seconds << " seconds" << std::endl << std::endl;

        return exploitable_faults;
    }

    static std::vector<u8> read_file(const std::string& path)
    {
        std::ifstream ifs(path, std::ios::binary | std::ios::ate);
        std::ifstream::pos_type pos = ifs.tellg();
        std::vector<u8> result(pos);
        ifs.seekg(0, std::ios::beg);
        ifs.read((char*)(&result[0]), pos);
        return result;
    }

    static u32 to_int(const std::string& s)
    {
        if (s.size() > 2 && s[0] == '0' && s[1] == 'x')
        {
            std::istringstream converter(s);
            u32 value;
            converter >> std::hex >> value;
            return value;
        }
        return std::stoi(s);
    }

    Configuration parse_arguments(int argc, char** argv)
    {
        if (argc < 2)
        {
            std::cout << "emulator [options]" << std::endl;
            std::cout << "  --start <start address> [required]" << std::endl;
            std::cout << "  --end <end address> [required]" << std::endl;
            std::cout << "  --flash <start address> <length> [required]" << std::endl;
            std::cout << "  --ram <start address> <length> [required]" << std::endl;
            std::cout << "  --section <section file> <offset> [required]" << std::endl;
            std::cout << "  --timeout <clock cycles> [optional]" << std::endl;
            std::cout << "  --ignore <start address> <end address> [optional]" << std::endl;
            std::cout << "  --armv{6,7}m [optional]" << std::endl;
            throw std::runtime_error("no options given");
        }

        std::vector<std::string> args;
        for (int i = 1; i < argc; i++)
        {
            args.emplace_back(argv[i]);
        }

        Configuration ctx;
        ctx.start_address                      = -1;
        ctx.flash                              = {0, 0};
        ctx.ram                                = {0, 0};
        ctx.arch                               = Architecture::ARMv7M;
        ctx.faulting_context.emulation_timeout = 0;
        ctx.num_threads                        = 0;

        for (u32 i = 0; i < args.size(); ++i)
        {
            if (args[i] == "--start")
            {
                ctx.start_address = to_int(args[++i]);
            }
            else if (args[i] == "--end")
            {
                auto symbol                   = args[++i];
                auto addr                     = to_int(args[++i]);
                ctx.end_address_symbols[addr] = symbol;
                ctx.faulting_context.end_addresses.push_back(addr);
            }
            else if (args[i] == "--symbol")
            {
                auto symbol       = args[++i];
                auto addr         = to_int(args[++i]);
                ctx.symbols[addr] = symbol;
            }
            else if (args[i] == "--section")
            {
                ctx.binary.push_back({args[++i], read_file(args[i]), (u32)to_int(args[++i])});
            }
            else if (args[i] == "--flash")
            {
                ctx.flash.offset = to_int(args[++i]);
                ctx.flash.size   = to_int(args[++i]);
            }
            else if (args[i] == "--ram")
            {
                ctx.ram.offset = to_int(args[++i]);
                ctx.ram.size   = to_int(args[++i]);
            }
            else if (args[i] == "--ignore")
            {
                auto begin = to_int(args[++i]);
                auto end   = to_int(args[++i]);
                ctx.faulting_context.ignore_memory_ranges.emplace_back(MemoryRange({begin, end - begin}));
            }
            else if (args[i] == "--timeout")
            {
                ctx.faulting_context.emulation_timeout = to_int(args[++i]);
            }
            else if (args[i] == "--armv7m")
            {
                ctx.arch = Architecture::ARMv7M;
            }
            else if (args[i] == "--armv6m")
            {
                ctx.arch = Architecture::ARMv6M;
            }
            else
            {
                throw std::runtime_error("unkown option '" + args[i] + "'");
            }
        }

        if (ctx.start_address == (u32)-1)
        {
            throw std::runtime_error("no entry point given");
        }
        if (ctx.faulting_context.end_addresses.size() == 0)
        {
            throw std::runtime_error("no end address given");
        }
        if (ctx.ram.size == 0)
        {
            throw std::runtime_error("no RAM given");
        }
        if (ctx.flash.size == 0)
        {
            throw std::runtime_error("no FLASH given");
        }

        return ctx;
    }
}    // namespace fault_simulator
