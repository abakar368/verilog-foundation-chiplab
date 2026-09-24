# Registers

This folder contains Verilog implementations of common **register and shift-register architectures** used for temporary data storage and serial/parallel data transfer.

## Projects

### PIPO — Parallel-In Parallel-Out

Loads a complete 4-bit word in parallel and outputs the stored data in parallel.

### PISO — Parallel-In Serial-Out

Loads 4-bit data in parallel and shifts it out serially, LSB first.

### SIPO — Serial-In Parallel-Out

Accepts data one bit at a time and provides the accumulated data as a 4-bit parallel output.

### SISO — Serial-In Serial-Out

Accepts serial data and shifts it through the register until it appears at the serial output.

## Register Types

| Register | Input    | Output   | Main Use                      |
| -------- | -------- | -------- | ----------------------------- |
| PIPO     | Parallel | Parallel | Data storage                  |
| PISO     | Parallel | Serial   | Parallel-to-serial conversion |
| SIPO     | Serial   | Parallel | Serial-to-parallel conversion |
| SISO     | Serial   | Serial   | Serial data transfer          |

## Common Features

* 4-bit registers
* Positive-edge-triggered clock
* Active-low synchronous reset
* Non-blocking assignments
* Shift-register operation
* Serial and parallel data transfer

## Simulation

Each project includes a dedicated testbench that:

* Generates the clock
* Applies reset
* Exercises the register operation
* Monitors outputs
* Generates an FSDB waveform dump

## Project Structure

```text id="g8s214"
REGISTERS/
├── PIPO/
├── PISO/
├── SIPO/
├── SISO/
└── README.md
```

Each project contains:

```text id="r5c821"
rtl/
tb/
makefile
<simulation_result>.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

## Key Concepts

* Registers
* Shift registers
* Serial-to-parallel conversion
* Parallel-to-serial conversion
* Synchronous reset
* Sequential logic
* Clocked data storage
