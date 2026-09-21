# Logic Gates

This folder contains basic digital logic gates implemented using **Verilog**. The projects demonstrate fundamental Boolean operations and combinational logic using data-flow and combinational modeling techniques.

## Projects

| Project       | Description                                   |
| ------------- | --------------------------------------------- |
| **AND Gate**  | Output is `1` when both inputs are `1`.       |
| **NAND Gate** | Inverted AND operation.                       |
| **NOR Gate**  | Inverted OR operation.                        |
| **NOT Gate**  | Inverts a single input.                       |
| **OR Gate**   | Output is `1` when at least one input is `1`. |
| **XOR Gate**  | Output is `1` when inputs are different.      |
| **XNOR Gate** | Output is `1` when inputs are equal.          |

## Directory Structure

```text
logic_gates/
│
├── AND/
│   ├── rtl/
│   └── tb/
│
├── NAND/
│   ├── rtl/
│   └── tb/
│
├── NOR/
│   ├── rtl/
│   └── tb/
│
├── NOT/
│   ├── rtl/
│   └── tb/
│
├── OR/
│   ├── rtl/
│   └── tb/
│
├── XOR/
│   ├── rtl/
│   └── tb/
│
└── XNOR/
    ├── rtl/
    └── tb/
```

## Simulation

Each project contains a dedicated testbench that verifies the gate's truth table. FSDB waveform dumping is included in the testbenches where applicable.

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
