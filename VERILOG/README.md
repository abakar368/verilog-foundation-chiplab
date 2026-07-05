# Verilog Foundation

A comprehensive collection of Verilog HDL projects covering the fundamental concepts of digital design. This repository is organized according to different Verilog modeling techniques and includes complete RTL implementations, self-checking testbenches, and simulation support.

---

## Repository Objectives

This repository is intended to:

* Learn Verilog HDL from basic to intermediate level.
* Demonstrate the major Verilog modeling techniques.
* Build a reusable collection of digital design modules.
* Practice verification using dedicated testbenches.
* Serve as a portfolio for RTL Design and Digital Design roles.

---

## Repository Structure

```
VERILOG/
├── Behavioral_modelling/
├── Data_flow_modelling/
├── Gate_level/
└── Structural_modelling/

SYSTEMVERILOG/
```

Each project follows a consistent directory structure:

```
PROJECT_NAME/
├── rtl/
│   └── <design>.v
├── tb/
│   └── <design>_tb.v
├── Makefile
└── README.md
```

---

## Modeling Techniques

### Behavioral Modeling

Projects implemented using procedural constructs such as:

* `always`
* `if`
* `case`
* procedural assignments

Example projects include:

* Logic Gates
* Comparators
* Adders
* Subtractors
* Multiplexers
* Decoders
* Encoders
* Code Converters

---

### Data Flow Modeling

Projects implemented primarily using continuous assignments (`assign`) and Boolean expressions.

Includes:

* Arithmetic Circuits
* Logic Gates
* Comparators
* Multiplexers
* Demultiplexers
* Encoders
* Decoders
* Code Converters

---

### Gate-Level Modeling

Projects constructed directly from Verilog primitive gates.

Examples include:

* Logic Gates
* Adders
* Subtractors
* Multiplexers
* Demultiplexers
* Encoders
* Decoders
* Comparators

---

### Structural Modeling

Projects implemented by connecting lower-level modules to build larger digital systems.

Examples include:

* Ripple Carry Adder
* Multiplexers
* Full Adders
* Full Subtractors

---

## Project Contents

Every project contains:

* RTL implementation
* Testbench
* Makefile for compilation and simulation
* Project-specific documentation

---

## Simulation Environment

The projects are designed to run using:

* Synopsys VCS
* Synopsys Verdi

Typical workflow:

```bash
make compile
make run
make wave
```

or

```bash
make all
```

Generated simulation files are excluded from version control using `.gitignore`.

---

## Repository Organization

The repository follows a consistent project layout to make every design easy to understand, simulate, and extend.

Each project contains:

* `rtl/` — Design Under Test (DUT)
* `tb/` — Verification testbench
* `Makefile` — Build and simulation automation
* `README.md` — Project documentation

---

## Future Work

This repository will continue to grow with additional projects covering:

* Sequential Circuits
* Finite State Machines (FSMs)
* Counters
* Shift Registers
* Memories
* Parameterized Designs
* Advanced Verification
* SystemVerilog Designs

---

## Author

**Abubakar Adam**

Mechanical Engineer | Aspiring RTL & ASIC Design Engineer | Robotics and AI Enthusiast
