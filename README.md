# Navigation
1. [Introduction](#introduction)
2. [Reproducing the Experiments](#reproduce)
3. [Using ARMORY in Your Own Projects](#projects)
4. [Academic Context](#academic-context)

# Welcome to ARMORY! <a name="introduction"></a>

ARMORY is our fully automated exhaustive fault simulator for ARM-M binaries.
Given a binary, a set of fault models to inject, and an exploitability model, ARMORY exhaustively finds all exploitable faults via simulation, automatically utilizing all available CPU cores.
ARMORY is based on M-Ulator, our own emulator for the ARMv6-M and ARMv7-M families, beating state-of-the-art emulator Unicorn in performance and, when it comes to invalid Assembly, also in correctness.

This repository contains our code, results, and visualizations used for the experiments of our paper "ARMORY: Fully Automated and Exhaustive Fault Simulation on ARM-M Binaries".
You can find the results and visualizations in the `results` directory.

# Reproducing the Experiments <a name="reproduce"></a>

Our code uses the meson build system (install via `pip3 install meson`).

In order to reproduce the experiments from our paper yourself, follow these steps:
1. clone this git
2. `cd case_studies/aes`
3. `python3 test_all.py`
4. find the results for the AES case study in the `reports` directory
5. `cd ../secure_boot`
6. `python3 test_all.py`
7. find the results for the secure boot case study in the `reports` directory

By default, this will execute the first-order experiments, i.e., this will generate the results that are summarized in Table II of our paper.
In order to run the higher-order experiments, navigate to the end of `code/case_study_aes/src/main.cpp` and `code/case_study_secure_boot/src/main.cpp`, and flip the `#if` switch.

# Using ARMORY in Your Own Projects <a name="projects"></a>

If you want to use ARMORY or M-Ulator in your own projects, please take a look at the [ARMORY code repository](https://github.com/emsec/arm-fault-simulator).

The repository you are currently looking at only contains our code used to produce the results from our paper.
It does not receive any code-related updates!

# Academic Context <a name="academic-context"></a>

If you use ARMORY or M-ulator in an academic context, please cite our paper using the reference below:
```latex
@article {
    todo
}
```
