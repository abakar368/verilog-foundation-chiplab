# Behavioral Verilog Projects

A collection of basic digital logic and combinational circuit designs implemented using **behavioral Verilog**. These projects cover fundamental building blocks commonly used in digital design and provide a foundation for RTL design and verification.

## Projects

| Project              | Description                             |
| -------------------- | --------------------------------------- |
| 1-Bit Comparator     | Compares two 1-bit values               |
| 4-Bit Comparator     | Compares two 4-bit values               |
| AND Gate             | 2-input AND logic                       |
| OR Gate              | 2-input OR logic                        |
| NOT Gate             | 1-input inverter                        |
| NAND Gate            | 2-input NAND logic                      |
| NOR Gate             | 2-input NOR logic                       |
| XOR Gate             | 2-input exclusive-OR logic              |
| XNOR Gate            | 2-input exclusive-NOR logic             |
| Half Adder           | Adds two 1-bit values                   |
| Full Adder           | Adds two bits with carry-in             |
| Half Subtractor      | Subtracts two 1-bit values              |
| Full Subtractor      | Subtracts two bits with borrow-in       |
| 2-to-1 Multiplexer   | Selects one of two inputs               |
| 4-to-1 Multiplexer   | Selects one of four inputs              |
| 1-to-2 Demultiplexer | Routes one input to one of two outputs  |
| 2-to-4 Decoder       | Converts 2-bit input to one-hot output  |
| 4-to-2 Encoder       | Converts one-hot input to binary output |
| Binary-to-Gray       | Converts binary code to Gray code       |
| Gray-to-Binary       | Converts Gray code to binary            |

## Modeling Style

All designs in this collection use **behavioral Verilog**, primarily with:

* `always @(*)`
* `if/else`
* `case`
* Verilog operators
* Combinational logic descriptions

## Verification

Each project includes a dedicated testbench that applies relevant input combinations and monitors the resulting outputs.

Typical testbench structure:

```text
project/
├── rtl/
│   └── <design>.v
├── tb/
│   └── <design>_tb.v
├── Makefile
├── <simulation_result>.png
└── README.md
```

The testbenches are used to verify the expected logical behavior through simulation.

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

## Purpose

This collection serves as a foundation for progressing from basic combinational logic to more advanced **RTL design, SystemVerilog, verification, UVM, and VLSI design**.
