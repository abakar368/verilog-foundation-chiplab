# Sequential Circuits

This folder contains Verilog implementations of fundamental **sequential logic circuits**, covering storage elements, counters, finite state machines, memory structures, registers, and procedural abstraction.

## Projects

### Flip-Flops

Basic clocked storage elements:

* D Flip-Flop
* JK Flip-Flop
* SR Flip-Flop
* T Flip-Flop

### Counters

Different counter architectures and counting sequences:

* 4-bit Up Counter
* 4-bit Down Counter
* 4-bit Up/Down Counter
* 4-bit Ripple Counter
* 4-bit Ring Counter
* 4-bit Johnson Counter
* 3-bit Mod-6 Counter

### Latches

Level-sensitive storage elements:

* D Latch
* Gated SR Latch
* SR Latch

### Registers

Data storage and serial/parallel data transfer:

* PIPO — Parallel-In Parallel-Out
* PISO — Parallel-In Serial-Out
* SIPO — Serial-In Parallel-Out
* SISO — Serial-In Serial-Out

### RAM and FIFO

Memory and sequential data buffering:

* Single-Port RAM
* Synchronous FIFO

### FSM

Finite State Machine implementations using:

* Mealy FSM

  * Non-overlapping sequence detection
  * Overlapping sequence detection
* Moore FSM

  * Non-overlapping sequence detection
  * Overlapping sequence detection

### Functions and Tasks

Procedural abstraction techniques for reusable Verilog logic:

* Verilog Functions
* Verilog Tasks
* Arithmetic circuits
* Logic gates
* Multiplexers
* Encoders and decoders
* Comparators

## Concepts Covered

```text
Sequential Logic
│
├── Flip-Flops
│   ├── D
│   ├── JK
│   ├── SR
│   └── T
│
├── Latches
│   ├── D
│   ├── SR
│   └── Gated SR
│
├── Registers
│   ├── PIPO
│   ├── PISO
│   ├── SIPO
│   └── SISO
│
├── Counters
│   ├── Up / Down
│   ├── Up/Down
│   ├── Ripple
│   ├── Ring
│   ├── Johnson
│   └── Mod-N
│
├── Memory
│   ├── RAM
│   └── FIFO
│
└── FSM
    ├── Mealy
    └── Moore
```

## Project Structure

Each major topic contains individual projects with their own RTL, testbench, simulation files, and README.

```text
SEQUENTIAL_CIRCUITS/
├── counters/
├── flip_flops/
├── fsm/
├── functions_and_tasks/
├── latches/
├── ram_and_fifo/
├── registers/
└── README.md
```

Individual projects generally follow:

```text
<PROJECT>/
├── rtl/
├── tb/
├── makefile
├── <simulation_result>.png
└── README.md
```

## Simulation

The projects are developed and verified using dedicated Verilog testbenches. Simulation includes:

* Clock and reset generation
* Functional stimulus
* Output monitoring
* Waveform generation
* RTL/schematic inspection where applicable

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

## Key Concepts

* Sequential logic
* Clocked logic
* Flip-flops and latches
* Registers and shift registers
* Counters
* Memory structures
* FIFO buffering
* Finite State Machines
* Mealy and Moore machines
* Synchronous and asynchronous behavior
* Reset design
* Non-blocking assignments
* RTL simulation and verification
