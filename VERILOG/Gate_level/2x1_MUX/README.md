# 2-to-1 Multiplexer

A 2-to-1 Multiplexer implemented using **gate-level Verilog modeling** with `NOT`, `AND`, and `OR` gate primitives.

## Inputs

| Signal | Description  |
| ------ | ------------ |
| `a`    | Input 0      |
| `b`    | Input 1      |
| `sel`  | Select input |

## Output

| Signal | Description     |
| ------ | --------------- |
| `y`    | Selected output |

## Logic

The select signal determines which input is passed to the output.

| `sel` | `y` |
| ----- | --- |
| 0     | `a` |
| 1     | `b` |

The logic is:

```text
nsel = ~sel
w1   = a & nsel
w2   = b & sel
y    = w1 | w2
```

## Gate-Level Modeling

The circuit is implemented using Verilog built-in gate primitives:

```verilog
not (nsel, sel);
and (w1, a, nsel);
and (w2, b, sel);
or  (y, w1, w2);
```

## Simulation

The testbench applies different combinations of inputs and `sel` and monitors the output to verify the multiplexer operation.

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
