# 4-to-1 Multiplexer

A 4-to-1 Multiplexer implemented using **gate-level Verilog modeling** with `NOT`, `AND`, and `OR` gate primitives.

## Inputs

| Signal    | Description    |
| --------- | -------------- |
| `i0`–`i3` | Data inputs    |
| `s0`      | Select input 0 |
| `s1`      | Select input 1 |

## Output

| Signal | Description     |
| ------ | --------------- |
| `y`    | Selected output |

## Logic

The select inputs determine which data input is passed to the output.

| `s1` | `s0` | `y`  |
| ---- | ---- | ---- |
| 0    | 0    | `i0` |
| 0    | 1    | `i1` |
| 1    | 0    | `i2` |
| 1    | 1    | `i3` |

The logic is:

```text id="j6a8rt"
ns0 = ~s0
ns1 = ~s1

w1 = i0 & ns1 & ns0
w2 = i1 & ns1 & s0
w3 = i2 & s1 & ns0
w4 = i3 & s1 & s0

y = w1 | w2 | w3 | w4
```

## Gate-Level Modeling

The multiplexer is implemented using Verilog built-in gate primitives:

```verilog id="q6t4d2"
not (ns0, s0);
not (ns1, s1);

and (w1, i0, ns1, ns0);
and (w2, i1, ns1, s0);
and (w3, i2, s1, ns0);
and (w4, i3, s1, s0);

or (y, w1, w2, w3, w4);
```

## Simulation

The testbench uses fixed data inputs and cycles through all four select combinations to verify that the correct input is connected to the output.

## Files

```text id="p8x2wv"
rtl/mux_4x1.v
tb/mux_4x1_tb.v
makefile
mux_4x1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
