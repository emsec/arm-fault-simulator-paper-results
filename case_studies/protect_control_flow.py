import os
import sys
import random
import colorsys
import re

main_functions = ["AES_ECB_encrypt:", "verify_and_run_firmware:"]

error_function = "report_error:"

tmp_reg = sys.argv[2]
d_reg = sys.argv[3]
gsr_reg = sys.argv[4]
outfile = sys.argv[5]

replacements = {
    "sb" : "r9",
    "sl" : "r10",
    "fp" : "r11",
    "ip" : "r12",
    "sp" : "r13",
    "lr" : "r14",
    "pc" : "r15",
}

registers = ["r"+str(i) for i in range(16)]

def get_regs(x):
    for y in "{}[]!,": x = x.replace(y,"")
    return [y for y in x.split() if y in registers]

lines = list()
with open(sys.argv[1], "rt") as file:
    for x in file.readlines():
        x = x.replace("\t"," ").strip()
        if "@" in x and x[0] != "@":
            x = x[:x.index("@")]
        x = x.strip()

        for r in replacements:
            x = re.sub(r"\b"+r+r"\b", replacements[r], x)

        lines.append(x)

######################################################
# build cfg

branch_ops = ["b", "bx", "cbz", "cbnz", "bl", "blx"]
suffixes = ["", "ne", "eq", "hi", "lo", "gt", "ls", "cs", "cc"]
branch = list()
for x in branch_ops:
    for y in suffixes:
        branch.append(x+y)

labels = set()
functions = set()
i = 0
while i < len(lines):
    l = lines[i]

    if not l or l[0] == "@":
        i += 1
        continue

    if ".type " in l and "%function" in l:
        func = lines[i+1].split()[-1][:-1]
        functions.add(func)

    i += 1

for f in functions:
    if f+":" in main_functions + [error_function]: continue
    for i,l in enumerate(lines):
        if f in l:
            lines[i] = l.replace(f, f+"_check_flow")


new_label_cnt = 2000
i = 0
while i < len(lines):
    l = lines[i]

    if not l or l[0] == "@":
        i += 1
        continue

    if ".type " in l and "%function" in l:
        labels.add(lines[i+1].split()[-1])

    if l.split()[0] in branch:
        labels.add(l.split()[-1]+":")
        while i < len(lines):
            i += 1
            if lines[i][0] != "." and lines[i][-1] != ":":
                lines.insert(i, ".L"+str(new_label_cnt)+":")
                new_label_cnt += 1
                break
            elif lines[i][0] == "." and lines[i][-1] != ":":
                continue
            else:
                break
        labels.add(lines[i])

    i += 1

predecessors = dict((x, set()) for x in labels)

last_block = None
current_block = None
i = 0
while i < len(lines):
    l = lines[i]

    if l in labels:
        last_block = current_block
        current_block = l

        if last_block != None:
            predecessors[current_block].add(last_block)


    if not l or l[0] == "@":
        i += 1
        continue

    # if l.startswith(("bl ", "blx ")):
    #     predecessors[l.split()[-1]+":"].add(current_block)
    #     predecessors[lines[i+1]].add(l.split()[-1])
    #     i += 1

    if l.split()[0] in branch:
        predecessors[l.split()[-1]+":"].add(current_block)

    if l.startswith("pop ") and "r15" in l:
        current_block = None

    if l.split()[0] in ["b", "bx", "bl", "blx"]:
        current_block = None

    i += 1

for x in predecessors:
    predecessors[x] = set(y for y in predecessors[x] if y)


##################################
# follow functions
function_labels = dict()
current_func = None
label_lines = dict()
for i,l in enumerate(lines):
    if l[-1] == ":":
        label_lines[l] = i
        if current_func != None:
            function_labels[current_func].append(l)
            if current_func == error_function: labels.remove(l)

    if ".type " in l and "%function" in l:
        current_func = lines[i+1]
        function_labels[current_func] = list()

    if current_func != None and ".size "+current_func in l:
        current_func = None

start = None
start_label = None
for x in main_functions:
    if x in label_lines:
        start_label = x
        start = label_lines[x]

if start == None:
    print("ERROR: could not find start function")
    sys.exit(1)

return_targets = dict()

def call(line, lr, seen):
    global return_targets

    current_label = lines[line]
    i = line + 1

    while not (lines[i][0] == "." and lines[i][-1] != ":"):
        l = lines[i]

        if l.split()[0] in ["blx", "bl"]:
            if l.split()[-1]+":" not in seen:
                call(label_lines[l.split()[-1]+":"], lines[i+1], set(list(seen) + [l.split()[-1]+":"]))
        elif l.split()[0] in branch:
            if l.split()[-1]+":" not in seen:
                call(label_lines[l.split()[-1]+":"], lr, set(list(seen) + [l.split()[-1]+":"]))

        if l[-1] == ":":
            current_label = l

        if (l.startswith("pop ") and "r15" in l) or l == "bx lr":
            if current_label not in return_targets: return_targets[current_label] = set()
            return_targets[current_label].add(lr)
            predecessors[lr].add(current_label)

        i += 1

call(start, None, set())

for x in return_targets:
    return_targets[x] = sorted(list(return_targets[x]))

change = True
while change:
    change = False
    for x in predecessors:
        if (not predecessors[x] or predecessors[x] == set([x])) and x not in main_functions:
            for y in predecessors:
                if x in predecessors[y]:
                    predecessors[y].remove(x)
            del predecessors[x]
            if x in labels: labels.remove(x)
            change = True
            break


labels = set([x for x in labels if not (lines[label_lines[x]+1][0] == "b" and lines[label_lines[x]+1].endswith(error_function[:-1]))])

for x in predecessors:
    predecessors[x] = sorted(list(predecessors[x]))

successors = dict()
for x in predecessors:
    for y in predecessors[x]:
        if y not in successors: successors[y] = set()
        successors[y].add(x)

for x in successors:
    successors[x] = sorted(list(successors[x]))


#########################################################################
# render cfg

# with open(outfile, "wt") as file:
#     file.write("digraph {\n")
#     file.write("compound=true;\n")
#     file.write("overlap=false;\n")
#     #file.write("splines=ortho;\n")
#     file.write("node [shape=record];\n")

#     cnt = 0

#     for x in function_labels:
#         content = ["\""+y[:-1]+"\"" for y in function_labels[x] if y in main_functions or y in predecessors]
#         if content:
#             cnt += 1
#             file.write("subgraph cluster_"+str(cnt)+" {\nnode [style=filled];\n")
#             file.write(" ".join(content)+ ";\n")
#             file.write("label = \""+x+"\";\n")
#             file.write("}\n")

#     color_inc = 1.0 / 10
#     hue = 0.0

#     q = [start_label]
#     seen = set()
#     while q:
#         x = q.pop(0)
#         for y in successors[x]:
#             color = colorsys.hsv_to_rgb(hue,1.0,1.0)
#             hue += color_inc
#             color = (int(255.0*color[0]) << 16) | (int(255.0*color[1]) << 8) | int(255.0*color[2])
#             color = hex(color)[2:].zfill(6)
#             file.write(("\""+x + "\" -> \"" + y + "\" [color=\"#"+color+"\"]\n").replace(":",""))
#             if y in seen: continue
#             seen.add(y)
#             q.append(y)
#     file.write("}\n")

# os.system("dot -Tpng "+outfile+" -o "+outfile+".png")

#########################################################################
# protect

random.seed(0)
label_signatures = dict()

for x in sorted(list(labels)):
    sig = hex(random.getrandbits(32))[2:]
    while sig == 0 or sig in label_signatures.values(): sig = hex(random.getrandbits(32))[2:]
    label_signatures[x] = sig

# initialize gsr at main function
lines[label_lines[start_label]] += " § ldr "+gsr_reg+", =#0x"+label_signatures[start_label] + " @ initialize gsr"

def load_reg(R, d):
    if d == 0:
        return "mov {}, #0".format(R)
    return "ldr {}, =#{}".format(R, hex(d))

def dist(L):
    dist = 0
    for x in L:
        dist ^= int(label_signatures[x],16)
    return dist

for x in labels:
    if x == start_label: continue

    if x in predecessors:
        lines[label_lines[x]] += " § @ check gsr against sig of "+predecessors[x][0][:-1]
        if len(predecessors[x]) > 1:
            lines[label_lines[x]] += " § eor "+gsr_reg+", "+gsr_reg+", "+d_reg + " @ multiple predecessors, use D reg"
        lines[label_lines[x]] += " § "+load_reg(d_reg, dist([x, predecessors[x][0]]))
        if dist([x, predecessors[x][0]]) != 0:
            lines[label_lines[x]] += " § eor "+gsr_reg+", "+gsr_reg+", "+d_reg
        lines[label_lines[x]] += " § ldr "+tmp_reg+", =#0x"+label_signatures[x]
        lines[label_lines[x]] += " § mrs "+d_reg+", apsr"
        lines[label_lines[x]] += " § cmp "+tmp_reg+", "+gsr_reg
        lines[label_lines[x]] += " § bne "+error_function[:-1]
        lines[label_lines[x]] += " § msr apsr_nzcvq, "+d_reg
        if x.replace("_check_flow:","") in functions:
            lines[label_lines[x]] += " § "+x.replace("_check_flow","")

    i = label_lines[x] + 1
    while i < len(lines) and lines[i].split()[0] not in labels:
        l = lines[i]

        if l[0] == "." and ":" not in l:
            break

        if l.startswith("pop ") and "r15" in l:
            target = return_targets[x][0][:-1]
            if len(predecessors[target+":"]) > 1:
                print("error: return label has multiple predecessors")
            else:
                lines[i] = "@ return target always has only one predecessor, no D reg usage § "+lines[i]
            break


        if l.split()[0] in branch:

            op = l.split()[0]
            target = l.split()[1]

            if target+":" not in labels:
                i += 1
                continue


            # prepare gsr for branch target
            if len(predecessors[target+":"]) > 1:
                lines[i] = "@ prepare gsr for branch target § " + load_reg(d_reg,dist([x, predecessors[target+":"][0]])) +" § "+lines[i]
            else:
                lines[i] = "@ only predecessor for "+ target +", no D reg usage § "+lines[i]

            if l.startswith(("b ","bx ","blx ", "bl ")):
                break

        i += 1
    else:
        if i < len(lines) :
            target = lines[i][:lines[i].index(":")]
            if len(predecessors[target+":"]) > 1:
                lines[i] = "@ prepare D reg for going on § "+load_reg(d_reg, dist([x, predecessors[target+":"][0]])) + " §"+lines[i]
            else:
                lines[i] = "@ only predecessor for "+ target +", no D reg usage § "+lines[i]


#########################################################################
# # output

with open(outfile, "wt") as file:
    for line in lines:
        for l in line.split("§"):
            l = l.strip()
            if l and l[-1] != ":":
                file.write("    ")

            for r in replacements:
                l = re.sub(r"\b"+replacements[r]+r"\b",r, l)

            file.write(l+"\n")
