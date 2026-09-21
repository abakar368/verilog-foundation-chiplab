# XOR Gate

A 2-input XOR gate implemented using **behavioral Verilog**.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `A`    | 1-bit input |
| `B`    | 1-bit input |

## Output

| Signal | Description     |
| ------ | --------------- |
| `Y`    | XOR gate output |

## Logic

`Y = A ^ B`

## Truth Table

| A | B | Y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

## Simulation

The testbench applies all four possible input combinations to verify the XOR operation.

## Files

```text
rtl/
└── xor_gate.v             # Behavioral RTL
tb/
└── xor_gate_tb.v          # Testbench
Makefile                   # Simulation commands
README.md                  # Project documentation
xor_gate.png    # Simulation result
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

```
```
