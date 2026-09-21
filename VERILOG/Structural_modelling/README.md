# Structural Modelling

This folder contains digital circuit designs implemented using **structural Verilog modeling**. The designs are built by instantiating lower-level modules and connecting them together, as well as using Verilog gate primitives such as `and`, `or`, `xor`, and `not`.

## Projects

### 1. 4-to-1 Multiplexer

A hierarchical 4-to-1 multiplexer constructed from **three 2-to-1 multiplexers**.

### 2. 4-Bit Ripple Carry Adder

A 4-bit adder constructed by connecting **four 1-bit Full Adders** in series, allowing the carry to ripple from one stage to the next.

### 3. Full Adder

A 1-bit Full Adder constructed using **two Half Adders and an OR gate**.

### 4. Full Subtractor

A 1-bit Full Subtractor implemented using structural gate-level connections.

## Directory Structure

```text id="1k4zpn"
structural_modelling/
│
├── 4x1_MUX/
│   ├── rtl/
│   └── tb/
│
├── 4_BIT_RIPPLE_ADDER/
│   ├── rtl/
│   └── tb/
│
├── FULL_ADDER/
│   ├── rtl/
│   └── tb/
│
└── FULL_SUBTRACTOR/
    ├── rtl/
    └── tb/
```

## Modeling Approach

The projects demonstrate:

* Gate-level structural modeling
* Hierarchical module instantiation
* Reuse of lower-level modules
* Interconnection of modules using wires
* Verilog primitive gates such as `and`, `or`, `xor`, and `not`

Each project contains separate **RTL** and **testbench** directories for design and verification.

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
