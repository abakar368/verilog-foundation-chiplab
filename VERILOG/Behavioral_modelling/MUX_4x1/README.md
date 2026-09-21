# 4-to-1 Multiplexer

A 4-to-1 multiplexer implemented using **behavioral Verilog**. It selects one of four input bits based on a 2-bit select signal.

## Inputs

| Signal | Description         |
| ------ | ------------------- |
| `D`    | 4-bit input         |
| `S`    | 2-bit select signal |

## Output

| Signal | Description     |
| ------ | --------------- |
| `Y`    | Selected output |

## Operation

```text id="w1i5zy"
S = 00 → Y = D[0]
S = 01 → Y = D[1]
S = 10 → Y = D[2]
S = 11 → Y = D[3]
```

## Simulation

The testbench uses `D = 1010` and cycles through all four select combinations.

## Files

```text id="w5o8pq"
rtl/
└── mux_4x1.v              # Behavioral RTL

tb/
└── mux_4x1_tb.v           # Testbench

Makefile                   # Simulation commands
mux_4x1.png    # Simulation result
README.md                  # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
