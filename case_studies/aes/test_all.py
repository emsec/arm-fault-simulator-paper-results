#!/usr/bin/python3

import os
import sys
import shutil

OPTS = "-Wall -Wpedantic -std=c11 -ffreestanding -nostdlib -mthumb"

if not os.path.exists("../../code/build/"):
    if os.system("cd ../../code && meson -Db_lto=true --buildtype=release build") != 0: sys.exit(1)
if os.system("meson compile -C ../../code/build/") != 0: sys.exit(1)

os.makedirs("reports/", exist_ok=True)

for f in sorted(os.listdir("files")):
    if f.endswith(".s") and all(x in f for x in sys.argv[1:]):
        name = f[:f.rfind(".")]
        print("#"*10 + " " + f + " " + "#"*10)
        print("")
        os.makedirs("data/", exist_ok=True)
        if os.system("arm-none-eabi-gcc {} -Wl,-Tlinker.ld -Wl,-Map,data/binary.map {} -o data/binary.elf".format(OPTS, "files/" + f)) != 0: sys.exit(1)
        if os.system("arm-none-eabi-objdump data/binary.elf -d > files/" + name+"_disassembled.txt") != 0: sys.exit(1)
        if os.system("python3 start_emulation.py > reports/{}.rpt".format(name)) != 0: sys.exit(1)
        shutil.rmtree("data/")
        print("")
