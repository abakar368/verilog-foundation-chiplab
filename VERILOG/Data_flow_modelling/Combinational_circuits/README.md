# Combinational Circuits

This folder contains a collection of **combinational digital circuits** implemented using **data-flow Verilog modeling**. Each project contains separate RTL and testbench files for design and simulation.

## Project Structure

### 1. Arithmetic Circuits

Basic arithmetic building blocks and a 4-bit ALU.

* **4-Bit ALU** — Performs arithmetic, logical, shift, and complement operations.
* **Carry Look-Ahead Adder** — 4-bit fast adder using generate and propagate logic.
* **Full Adder** — Adds two 1-bit inputs with carry-in.
* **Full Subtractor** — Subtracts two 1-bit inputs with borrow-in.
* **Half Adder** — Adds two 1-bit inputs.
* **Half Subtractor** — Subtracts two 1-bit inputs.
* **Ripple Carry Adder** — Multi-bit adder built from full adders.

### 2. Code Converters

* **Binary to Gray Code** — Converts 4-bit binary values to Gray code.
* **Gray to Binary Code** — Converts 4-bit Gray code values back to binary.

### 3. Comparators

* **1-Bit Comparator** — Compares two 1-bit values.
* **2-Bit Comparator** — Compares two 2-bit values and determines whether A is greater than, equal to, or less than B.

### 4. Encoder & Decoder

* **2-to-4 Decoder** — Converts a 2-bit input into one of four active outputs.
* **4-to-2 Encoder** — Converts a valid one-hot 4-bit input into a 2-bit binary output.
* **4-to-2 Priority Encoder** — Encodes the highest-priority active input.

### 5. Multiplexer & Demultiplexer

* **2-to-1 Multiplexer** — Selects one of two inputs.
* **4-to-1 Multiplexer** — Selects one of four inputs.
* **1-to-2 Demultiplexer** — Routes one input to one of two outputs.

## Directory Structure

```text
combinational_circuits/
│
├── Arithmetic_circuits/
│   ├── ALU/4BIT_ALU/
│   ├── CARRY_LOOK_AHEAD/
│   ├── FULL_ADDER/
│   ├── FULL_SUBTRACTOR/
│   ├── HALF_ADDER/
│   ├── HALF_SUBTRACTOR/
│   └── RIPPLE_CARRY_ADDER/
│
├── Code_converter/
│   ├── BINARY_TO_GRAY/
│   └── GRAY_TO_BINARY/
│
├── Comparator/
│   ├── 1BIT_COMPARATOR/
│   └── 2BIT_COMPARATOR/
│
├── Encoder_Decoder/
│   ├── DECODER/
│   ├── ENCODER/
│   └── PRIORITY_ENCODER/
│
└── Multiplexer_and_Demultiplexer/
    ├── 1x2_Demux/
    ├── 2x1_Mux/
    └── 4x1_Mux/
```

## Modeling Approach

All circuits in this section use **data-flow modeling**, primarily through continuous assignments with `assign` statements and Boolean expressions.

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
