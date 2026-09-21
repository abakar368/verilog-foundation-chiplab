# 2-to-1 Multiplexer

A 2-to-1 multiplexer implemented using **behavioral Verilog**. It selects one of two inputs and passes it to the output based on the select signal.

## Inputs

| Signal | Description   |
| ------ | ------------- |
| `A`    | Input 0       |
| `B`    | Input 1       |
| `S`    | Select signal |

## Output

| Signal | Description     |
| ------ | --------------- |
| `Y`    | Selected output |

## Operation

```text
S = 0 → Y = A
S = 1 → Y = B
```

## Simulation

The testbench checks both select states with different input combinations.

## Files

```text
rtl/
└── mux_2x1.v              # Behavioral RTL

tb/
└── mux_2x1_tb.v           # Testbench

Makefile                   # Simulation commands
mux_2x1.png    # Simulation result
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
