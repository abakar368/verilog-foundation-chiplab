# 4-Bit Ripple Carry Adder

## Description

This project implements a **4-bit Ripple Carry Adder** using **Data Flow Modeling** in Verilog. The design is constructed by cascading four **1-bit Full Adders**. The carry output from each stage is connected to the carry input of the next stage, allowing the circuit to add two 4-bit binary numbers with an optional carry-in.

## Project Structure

```text
RIPPLE_CARRY_ADDER/
├── rtl/
│   ├── full_adder.v
│   └── ripple_carry_adder.v
├── tb/
│   └── ripple_carry_adder_tb.v
├── Makefile
└── README.md
```

## Files

* **rtl/full_adder.v** – 1-bit Full Adder module
* **rtl/ripple_carry_adder.v** – 4-bit Ripple Carry Adder design (DUT)
* **tb/ripple_carry_adder_tb.v** – Testbench for functional verification
* **Makefile** – Commands for compilation and simulation

## Simulation

```bash
make compile
make run
```

Or run everything with:

```bash
make all
```
