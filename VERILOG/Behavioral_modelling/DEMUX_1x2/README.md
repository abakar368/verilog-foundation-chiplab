# 1-to-2 Demultiplexer

A 1-to-2 demultiplexer implemented using **behavioral Verilog**. It routes a single data input to one of two outputs based on the select signal.

## Inputs

| Signal | Description   |
| ------ | ------------- |
| `D`    | Data input    |
| `S`    | Select signal |

## Outputs

| Signal | Description                  |
| ------ | ---------------------------- |
| `Y0`   | Output selected when `S = 0` |
| `Y1`   | Output selected when `S = 1` |

## Truth Table

```text id="qg6qak"
S  | Y0 | Y1
---|----|---
0  | D  | 0
1  | 0  | D
```

## Simulation

The testbench checks both select states and changes the data input during simulation.

## Files

```text
rtl/
└── demux_1x2.v            # Behavioral RTL
tb/
└── demux_1x2_tb.v         # Testbench
demux_1x2.png    # Simulation result
makefile                   # Simulation commands
README.md                  # Project documentation
```

## Tools

* Synopsys
* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
