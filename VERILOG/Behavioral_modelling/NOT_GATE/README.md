# NOT Gate

A 1-input NOT gate implemented using **behavioral Verilog**.

## Input

| Signal | Description |
| ------ | ----------- |
| `A`    | 1-bit input |

## Output

| Signal | Description     |
| ------ | --------------- |
| `Y`    | Inverted output |

## Logic

```text id="2v4y6n"
Y = ~A
```

## Truth Table

```text id="y0z3xk"
A | Y
--|--
0 | 1
1 | 0
```

## Simulation

The testbench applies both possible input values to verify the inverter.

## Files

```text id="3n6v2p"
rtl/
└── not_gate.v          # Behavioral RTL

tb/
└── not_gate_tb.v       # Testbench

Makefile                 # Simulation commands
not_gate.png  # Simulation result
README.md                # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
