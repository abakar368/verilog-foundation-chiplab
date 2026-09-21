# 2-to-1 Multiplexer

A 2-to-1 Multiplexer implemented using **data-flow Verilog**. The circuit selects one of two inputs and routes it to the output based on the select signal.

## Inputs

| Signal | Description   |
| ------ | ------------- |
| `a`    | Input 0       |
| `b`    | Input 1       |
| `s`    | Select signal |

## Output

| Signal | Description     |
| ------ | --------------- |
| `y`    | Selected output |

## Logic

```text
y = s ? b : a
```

When `s = 0`, `y = a`.
When `s = 1`, `y = b`.

## Truth Table

| s | y |
| - | - |
| 0 | a |
| 1 | b |

## Simulation

The testbench applies four input combinations to verify that the correct input is selected for both values of `s`.

## Files

```text
rtl/mux_2x1.v
tb/mux_2x1_tb.v
makefile
mux_2x1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
