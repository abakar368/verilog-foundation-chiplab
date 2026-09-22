# 2-to-4 Decoder

A 2-to-4 Decoder implemented using **gate-level Verilog modeling** with `NOT` and `AND` gate primitives.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `a`    | Input bit   |
| `b`    | Input bit   |

## Outputs

| Signal | Description |
| ------ | ----------- |
| `d0`   | Output 0    |
| `d1`   | Output 1    |
| `d2`   | Output 2    |
| `d3`   | Output 3    |

## Logic

For each input combination, exactly one output is active.

| `a` | `b` | `d0` | `d1` | `d2` | `d3` |
| --- | --- | ---- | ---- | ---- | ---- |
| 0   | 0   | 1    | 0    | 0    | 0    |
| 0   | 1   | 0    | 1    | 0    | 0    |
| 1   | 0   | 0    | 0    | 1    | 0    |
| 1   | 1   | 0    | 0    | 0    | 1    |

The logic is:

```text id="wbyl9h"
na = ~a
nb = ~b

d0 = na & nb
d1 = na & b
d2 = a & nb
d3 = a & b
```

## Gate-Level Modeling

The decoder is constructed using Verilog built-in `NOT` and `AND` gate primitives:

```verilog id="a4qf3d"
not (na, a);
not (nb, b);

and (d0, na, nb);
and (d1, na, b);
and (d2, a, nb);
and (d3, a, b);
```

## Simulation

The testbench applies all four possible input combinations and monitors the four decoder outputs to verify correct operation.

## Files

```text id="7gk5rt"
rtl/decoder_2x4.v
tb/decoder_2x4_tb.v
makefile
decoder_2x4.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
