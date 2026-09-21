# XNOR Gate

A 2-input XNOR gate implemented using **behavioral Verilog**.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `A`    | 1-bit input |
| `B`    | 1-bit input |

## Output

| Signal | Description      |
| ------ | ---------------- |
| `Y`    | XNOR gate output |

## Logic

`Y = ~(A ^ B)`

## Truth Table

| A | B | Y |
| - | - | - |
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## Simulation

The testbench applies all four possible input combinations to verify the XNOR operation.

## Files

```text
rtl/
└── xnor_gate.v            # Behavioral RTL
tb/
└── xnor_gate_tb.v         # Testbench
Makefile                   # Simulation commands
README.md                  # Project documentation
xnor_gate.png    # Simulation result
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

```
```
