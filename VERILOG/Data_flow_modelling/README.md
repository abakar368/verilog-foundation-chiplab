# Data Flow Modelling

This folder contains a collection of digital design projects implemented using **Verilog data-flow and combinational modeling**. The projects cover fundamental logic gates and commonly used combinational circuits.

## Contents

### 1. Combinational Circuits

The `combinational_circuits` folder contains:

* **Arithmetic Circuits**

  * 4-Bit ALU
  * Carry Look-Ahead Adder
  * Full Adder
  * Full Subtractor
  * Half Adder
  * Half Subtractor
  * Ripple Carry Adder

* **Code Converters**

  * Binary to Gray Code
  * Gray to Binary Code

* **Comparators**

  * 1-Bit Comparator
  * 2-Bit Comparator

* **Encoder & Decoder**

  * 2-to-4 Decoder
  * 4-to-2 Encoder
  * 4-to-2 Priority Encoder

* **Multiplexer & Demultiplexer**

  * 2-to-1 Multiplexer
  * 4-to-1 Multiplexer
  * 1-to-2 Demultiplexer

### 2. Logic Gates

The `logic_gates` folder contains the fundamental Boolean logic gates:

* AND
* NAND
* NOR
* NOT
* OR
* XOR
* XNOR

## Directory Structure

```text
data_flow_modelling/
│
├── combinational_circuits/
│   ├── Arithmetic_circuits/
│   ├── Code_converter/
│   ├── Comparator/
│   ├── Encoder_Decoder/
│   └── Multiplexer_and_Demultiplexer/
│
├── logic_gates/
│   ├── AND/
│   ├── NAND/
│   ├── NOR/
│   ├── NOT/
│   ├── OR/
│   ├── XOR/
│   └── XNOR/
│
└── README.md
```

## Modeling Approach

The projects demonstrate fundamental **data-flow and combinational Verilog modeling**, using continuous assignments, Boolean expressions, conditional operators, and combinational `always` blocks where appropriate.

Each project is organized with separate RTL and testbench directories for easier simulation and verification.

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
