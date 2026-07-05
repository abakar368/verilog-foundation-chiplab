# Full Subtractor

## Description

This project implements a **1-bit Full Subtractor** using **Structural Modeling** in Verilog. The design is built by connecting two **Half Subtractor** modules and an OR gate. It subtracts two input bits (`A` and `B`) with a borrow-in (`Bin`) and produces a difference (`D`) and borrow-out (`Bout`).

## Project Structure

```text
FULL_SUBTRACTOR/
├── rtl/
│   ├── half_subtractor.v
│   └── full_subtractor.v
├── tb/
│   └── full_subtractor_tb.v
├── Makefile
└── README.md
```

## Files

* **rtl/half_subtractor.v** – 1-bit Half Subtractor module
* **rtl/full_subtractor.v** – 1-bit Full Subtractor design (DUT)
* **tb/full_subtractor_tb.v** – Testbench for functional verification
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
