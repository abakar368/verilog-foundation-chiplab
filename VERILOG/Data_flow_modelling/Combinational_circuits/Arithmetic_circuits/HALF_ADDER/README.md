# Half Adder

## Description

This project implements a **1-bit Half Adder** using **Data Flow Modeling** in Verilog. The circuit adds two single-bit inputs (`a` and `b`) and produces a **sum** (`sum`) and a **carry** (`carry`).

## Project Structure

```text
HALF_ADDER/
├── rtl/
│   └── half_adder.v
├── tb/
│   └── half_adder_tb.v
├── Makefile
└── README.md
```

## Files

* **rtl/half_adder.v** – Half Adder design (DUT)
* **tb/half_adder_tb.v** – Testbench for functional verification
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
