# 1-Bit Comparator

## Description

This project implements a **1-bit Comparator** using **Data Flow Modeling** in Verilog. The circuit compares two 1-bit inputs (`a` and `b`) and generates three outputs indicating whether `a` is greater than (`gt`), equal to (`eq`), or less than (`lt`) `b`.

## Project Structure

```text
1BIT_COMPARATOR/
├── rtl/
│   └── comparator_1bit.v
├── tb/
│   └── comparator_1bit_tb.v
├── Makefile
└── README.md
```

## Files

* **rtl/comparator_1bit.v** – 1-bit Comparator design (DUT)
* **tb/comparator_1bit_tb.v** – Testbench for functional verification
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
