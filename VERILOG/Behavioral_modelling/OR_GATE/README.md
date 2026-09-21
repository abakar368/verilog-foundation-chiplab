# OR Gate

A 2-input OR gate implemented using **behavioral Verilog**.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `A`    | 1-bit input |
| `B`    | 1-bit input |

## Output

| Signal | Description    |
| ------ | -------------- |
| `Y`    | OR gate output |

## Logic

`Y = A | B`

## Truth Table

| A | B | Y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

## Simulation

The testbench applies all four possible input combinations to verify the OR operation.

## Files

```text
rtl/
└── or_gate.v              # Behavioral RTL
tb/
└── or_gate_tb.v           # Testbench
Makefile                   # Simulation commands
or_gate.png    # Simulation result
README.md                  # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

```
```
