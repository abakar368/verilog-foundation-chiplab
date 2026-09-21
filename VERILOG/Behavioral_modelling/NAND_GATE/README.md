# NAND Gate

A 2-input NAND gate implemented using **behavioral Verilog**.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `A`    | 1-bit input |
| `B`    | 1-bit input |

## Output

| Signal | Description |
| ------ | ----------- |
| `Y`    | NAND output |

## Logic

```text id="8j2j4p"
Y = ~(A & B)
```

## Truth Table

```text id="7m2r1x"
A B | Y
----|---
0 0 | 1
0 1 | 1
1 0 | 1
1 1 | 0
```

## Simulation

The testbench applies all **4 possible input combinations**.

## Files

```text id="f0d1lw"
rtl/
└── nand_gate.v          # Behavioral RTL

tb/
└── nand_gate_tb.v       # Testbench

Makefile                 # Simulation commands
nand_gate.png  # Simulation result
README.md                # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
