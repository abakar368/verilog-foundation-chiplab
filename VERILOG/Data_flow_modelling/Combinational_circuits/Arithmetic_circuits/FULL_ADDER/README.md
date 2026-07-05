# Full Adder

## Description

This project implements a **1-bit Full Adder** using **Data Flow Modeling** in Verilog. The circuit adds two input bits (`a` and `b`) together with a carry-in (`cin`) and produces a sum (`sum`) and carry-out (`carry`).

## Project Structure

```text
FULL_ADDER/
├── rtl/
│   └── full_adder.v
├── tb/
│   └── full_adder_tb.v
├── Makefile
└── README.md
```

## Files

* **rtl/full_adder.v** – Full Adder design (DUT)
* **tb/full_adder_tb.v** – Testbench for functional verification
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
