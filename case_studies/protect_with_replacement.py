import os
import sys
import re

temp_reg = sys.argv[2]

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

new_label_cnt = 1000

idempotent_ops = ["add", "adc", "sub", "mul", "rsb", "mov", "and", "orr", "ror", "eor", "bic", "bfi", "lsl", "lsr", "cmp", "tst", "ldr", "str", "uxt", "sxt", "b", "bx", "cbz", "cbnz", "ubfx", "sbfx", "adcs", "mrs","msr"]
reads_sreg_ops = ["ror", "adc"]

suffixes = ["","b","h","s", "ne", "eq", "hi", "lo", "gt", "ls", "cs","cc", "ia", "db"]

unsupported_ops = []

idempotent = list()
for x in idempotent_ops:
    for y in suffixes:
        idempotent.append(x+y)
reads_sreg = list()
for x in reads_sreg_ops:
    for y in suffixes:
        reads_sreg.append(x+y)

unknowns=list()
i = 0
while i < len(lines):
    line = lines[i]
    orig_line = line

    if not line or line[0] == "." or line[-1] == ":" or line[0] == "@":
        i += 1
        continue

    op = line.split()[0]

    if op in unsupported_ops:
        print("please check line {} [unsupported op {}]".format(i+1, op))
        i += 1
        continue

    if op in ["adcs"]:
        print("please check line {} [potentially difficult op {}]".format(i+1, op))

    if temp_reg in get_regs(line):
        lines[i] = line + " @ " + orig_line
        lines.insert(i+1, line)
        i+=1
    elif op.startswith("it"):
        pairs = {"eq":"ne", "cs":"cc","mi":"pl", "vs":"vc", "hi":"ls", "ge":"lt", "gt":"le"}
        for k, v in list(pairs.items()): pairs[v] = k
        thens = op.count("t")
        elses = op.count("e")
        cond = line.split()[1]

        else_path = ".L"+str(new_label_cnt)
        new_label_cnt += 1
        end_it = ".L"+str(new_label_cnt)
        new_label_cnt += 1

        for j in range(i+1, i+1+thens):
            lines[j] = lines[j].replace(cond, "")
        for j in range(i+1+thens, i+1+thens+elses):
            lines[j] = lines[j].replace(pairs[cond], "")

        lines[i] = "b"+pairs[cond] + " " + else_path + " @ " + orig_line
        if elses == 0:
            lines.insert(i+thens+1, else_path+":")
        else:
            lines.insert(i+thens+1, "b "+end_it)
            lines.insert(i+thens+2, else_path+":")
            lines.insert(i+thens+elses+3, end_it+":")
    elif op == "bl":
        ret = ".L"+str(new_label_cnt)
        new_label_cnt += 1
        label = line.split()[1]
        lines[i] = "adr lr, " + ret + " @ " + orig_line
        lines.insert(i+1, "adr lr, " + ret)
        lines.insert(i+2, "orr lr, #1")
        lines.insert(i+3, "orr lr, #1")
        lines.insert(i+4, "b "+label)
        lines.insert(i+5, "b "+label)
        lines.insert(i+6, ret+":")
        i += 6
    elif op.startswith(("ldr","str")) and line[-1] != "]" and "]" in line:
        regs = get_regs(line)
        imm = line[line.rfind(",")+1:].strip()
        if "]" in imm: imm = imm[:imm.find("]")].strip()
        if line[-1] == "!":
            lines[i] = line.replace("!","") + " @ " + orig_line
            lines.insert(i+1, line.replace("!",""))
            lines.insert(i+2, "add "+regs[-1]+", "+regs[-1]+", "+imm)
            i+=1
        else:
            lines[i] = line[:line.rfind("]")+1] + " @ " + orig_line
            lines.insert(i+1, line[:line.rfind("]")+1])
            lines.insert(i+2, "add "+regs[-1]+", "+regs[-1]+", "+imm)
            i+=1
    elif op == "push":
        lines[i] = line.replace("push", "stmdb r13!,")
        i -= 1
    elif op == "pop":
        lines[i] = line.replace("pop", "ldmia r13!,")
        i -= 1
    elif op.startswith(("ldm","stm")):
        regs = get_regs(line)
        src = regs[0]
        reglist = ", ".join(regs[1:])
        if "!" in line:
            inc_op = "sub"
            rev_op = "add"
            if op in ["ldm", "ldmia", "stm", "stmia"]: inc_op,rev_op = rev_op,inc_op
            if op.startswith("stm") or (op.startswith("ldm") and "r15" not in regs):
                lines[i] = line.replace("!","") + " @ " + orig_line
                lines.insert(i+1, line.replace("!",""))
                lines.insert(i+2, inc_op+ " "+temp_reg+", "+src+", #"+str(len(regs)*4-4))
                lines.insert(i+3, inc_op+ " "+temp_reg+", "+src+", #"+str(len(regs)*4-4))
                lines.insert(i+4, "mov "+src+", "+temp_reg)
                lines.insert(i+5, "mov "+src+", "+temp_reg)
                i += 5
            else:
                lines[i] = inc_op+ " "+temp_reg+", "+src+", #"+str(len(regs)*4-4) + " @ " + orig_line
                lines.insert(i+1, inc_op+ " "+temp_reg+", "+src+", #"+str(len(regs)*4-4))
                lines.insert(i+2, "mov "+src+", "+temp_reg)
                lines.insert(i+3, "mov "+src+", "+temp_reg)
                lines.insert(i+4, rev_op+ " "+temp_reg+", "+src+", #"+str(len(regs)*4-4))
                lines.insert(i+5, rev_op+ " "+temp_reg+", "+src+", #"+str(len(regs)*4-4))
                lines.insert(i+6, line.replace("!","").replace(src, temp_reg, 1))
                lines.insert(i+7, line.replace("!","").replace(src, temp_reg, 1))
                i += 7
        elif src in regs[1:]:
            lines[i] = "mov "+temp_reg+", "+src + " @ " + orig_line
            lines.insert(i+1, "mov "+temp_reg+", "+src)
            lines.insert(i+2, line.replace(src, temp_reg, 1))
            lines.insert(i+3, line.replace(src, temp_reg, 1))
            i += 3
        else:
            lines[i] = line + " @ " + orig_line
            lines.insert(i+1, line)
            i += 1
    elif op in idempotent:
        regs = get_regs(line)
        if op[-1] == "s" and any(x in line for x in reads_sreg):
            line = line.replace(regs[0], temp_reg, 1)
            lines[i] = line.replace(op, op[:-1],1) + " @ " + orig_line
            lines.insert(i+1, line.replace(op, op[:-1],1))
            lines.insert(i+2, "movs "+regs[0]+", "+temp_reg)
            lines.insert(i+3, "movs "+regs[0]+", "+temp_reg)
            i+=3
        elif len(regs) > 1 and regs.count(regs[0]) > 1:
            line = line.replace(regs[0], temp_reg, 1)
            lines[i] = line + " @ " + orig_line
            lines.insert(i+1, line)
            lines.insert(i+2, "mov "+regs[0]+", "+temp_reg)
            lines.insert(i+3, "mov "+regs[0]+", "+temp_reg)
            i+=3
        else:
            lines[i] = line + " @ " + orig_line
            lines.insert(i+1, line)
            i+=1
    else:
        unknowns.append(op)
        lines[i] = line + " @ ??"

    i += 1

if unknowns:
    print("unknowns = "+str(set(unknowns)))

with open(sys.argv[3], "wt") as file:
    for line in lines:
        if line and line[-1] != ":":
            file.write("    ")

        for r in replacements:
            line = re.sub(r"\b"+replacements[r]+r"\b",r, line)

        file.write(line+"\n")
