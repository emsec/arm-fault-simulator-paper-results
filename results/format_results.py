#!/usr/bin/python3

NAMES = ["secure_boot", "aes"]

################################################################
############## DO NOT CHANGE ANYTHING BELOW ####################
################################################################

import os
import sys

instr_fault = True

def order_str(o):
    ending = "th"
    if o == "1": ending = "st"
    elif o == "2": ending = "nd"
    elif o == "3": ending = "rd"
    return o+ending

def format_time(seconds):
    if seconds < 60:
        return "{:.2f}s".format(seconds)
    elif seconds < 60*60:
        return "{:.2f}min".format(seconds/60)
    elif seconds < 60*60*24:
        return "{:.2f}h".format(seconds/(60*60))
    return "{:.2f}days".format(seconds/(60*60*24))

must_include = list()
directory = sys.argv[1]
level = 3
for i in range(2, len(sys.argv)):
    if sys.argv[i].startswith("-l"):
        level = int(sys.argv[i][2:])
    else:
        must_include.append(sys.argv[i])

for n in NAMES:
    if not os.path.isdir(directory+"/"+n): continue
    print(n)
    for f in sorted(os.listdir(directory+"/"+n)):
        if not f.endswith((".rpt", ".txt")): continue
        if not all(x in n+" "+f for x in must_include): continue

        print("  {}".format(f))

        cnt_reg_fault = 0
        cnt_instr_fault = 0
        total_time = 0
        file_incomplete = True

        for line in open(directory+"/"+n+"/"+f, "rt"):
            if "x " in line and "Instruction" in line and "'" in line:
                instr_fault = True
                name = line[line.index("'")+1:]
                name = name[:name.rfind("'")]
                order = dict()
            elif "x " in line and "Register" in line and "'" in line:
                instr_fault = False
                name = line[line.index("'")+1:]
                name = name[:name.rfind("'")]
                order = dict()

            if line.startswith("Exploitable with "):
                x = line.split()[2]
                if x not in order: order[x] = 0
                order[x] += 1

            elif line.startswith("Total: "):
                faults = int(line.split()[1])

                if instr_fault:
                    cnt_instr_fault += faults
                else:
                    cnt_reg_fault += faults

            elif line.startswith("Elapsed time: "):
                time = float(line.split()[2])
                total_time += time

                if level > 2:
                    if len(order) != 1:
                        print("      {} {} in {}".format(faults, name, format_time(time)))
                        for x in order:
                            print("         {} {} order".format(order[x], order_str(x)))
                    else:
                        print("      {} {} (all {} order) in {}".format(faults, name, order_str(list(order.keys())[0]), format_time(time)))

            elif line.startswith("Total time: "):
                file_incomplete = False


        if level > 1:
            print("    {} instruction faults".format(cnt_instr_fault))
            print("    {} register faults".format(cnt_reg_fault))
        print("    {} total faults in {}".format(cnt_reg_fault+cnt_instr_fault, format_time(total_time)))
        if file_incomplete:
            print("    WARNING: file is incomplete!        <---------")

