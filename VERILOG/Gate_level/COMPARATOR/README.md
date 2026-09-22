# 1-Bit Comparator

A 1-bit comparator implemented using **gate-level Verilog modeling** with `NOT`, `AND`, and `XNOR` gate primitives.

## Inputs

| Signal | Description      |
| ------ | ---------------- |
| `a`    | First input bit  |
| `b`    | Second input bit |

## Outputs

| Signal   | Description       |
| -------- | ----------------- |
| `a_gt_b` | High when `a > b` |
| `a_eq_b` | High when `a = b` |
| `a_lt_b` | High when `a < b` |

## Logic

The comparator determines whether `a` is greater than, equal to, or less than `b`.

| `a` | `b` | `a_gt_b` | `a_eq_b` | `a_lt_b` |
| --- | --- | -------- | -------- | -------- |
| 0   | 0   | 0        | 1        | 0        |
| 0   | 1   | 0        | 0        | 1        |
| 1   | 0   | 1        | 0        | 0        |
| 1   | 1   | 0        | 1        | 0        |

The logic is:

```text id="p6f8vc"
na      = ~a
nb      = ~b

a_gt_b  = a & nb
a_lt_b  = na & b
a_eq_b  = a XNOR b
```

## Gate-Level Modeling

The comparator is implemented using Verilog built-in gate primitives:

```verilog id="m2s8hk"
not (na, a);
not (nb, b);

and (a_gt_b, a, nb);
and (a_lt_b, na, b);

xnor (a_eq_b, a, b);
```

## Simulation

The testbench applies all four possible combinations of `a` and `b` and monitors the three comparison outputs.

## Files

```text id="c7v1ne"
rtl/comparator.v
tb/comparator_tb.v
makefile
comparator.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
