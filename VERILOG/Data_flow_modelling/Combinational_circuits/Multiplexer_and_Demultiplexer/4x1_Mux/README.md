# 4-to-1 Multiplexer

A 4-to-1 Multiplexer implemented using **data-flow Verilog**. The circuit selects one of four inputs and routes it to the output based on a 2-bit select signal.

## Inputs

| Signal | Description         |
| ------ | ------------------- |
| `a`    | Input 0             |
| `b`    | Input 1             |
| `c`    | Input 2             |
| `d`    | Input 3             |
| `sel`  | 2-bit select signal |

## Output

| Signal | Description     |
| ------ | --------------- |
| `y`    | Selected output |

## Logic

```text id="d0v4zj"
sel = 00 → y = a
sel = 01 → y = b
sel = 10 → y = c
sel = 11 → y = d
```

## Truth Table

| `sel` | `y` |
| ----- | --- |
| 00    | `a` |
| 01    | `b` |
| 10    | `c` |
| 11    | `d` |

## Simulation

The testbench sets the four inputs and cycles through all four select combinations to verify that each input is correctly routed to the output.

## Files

```text id="7u0xcn"
rtl/mux_4x1.v
tb/mux_4x1_tb.v
Makefile
mux_4x1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
