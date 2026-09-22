# Half Subtractor

A Half Subtractor implemented using **gate-level Verilog modeling** with `XOR`, `NOT`, and `AND` gate primitives.

## Inputs

| Signal | Description      |
| ------ | ---------------- |
| `a`    | Minuend input    |
| `b`    | Subtrahend input |

## Outputs

| Signal   | Description       |
| -------- | ----------------- |
| `diff`   | Difference output |
| `borrow` | Borrow output     |

## Logic

The Half Subtractor subtracts `b` from `a` and produces a difference and borrow.

| `a` | `b` | `diff` | `borrow` |
| --- | --- | ------ | -------- |
| 0   | 0   | 0      | 0        |
| 0   | 1   | 1      | 1        |
| 1   | 0   | 1      | 0        |
| 1   | 1   | 0      | 0        |

The logic is:

```text id="b9m4qz"
diff   = a ^ b
n1     = ~a
borrow = n1 & b
```

## Gate-Level Modeling

The design uses Verilog built-in gate primitives directly:

```verilog id="c3k7va"
xor (diff, a, b);
not (n1, a);
and (borrow, n1, b);
```

## Simulation

The testbench applies all four possible combinations of `a` and `b` and monitors the `diff` and `borrow` outputs.

## Files

```text id="t6p2xm"
rtl/half_subtractor.v
tb/half_subtractor_tb.v
makefile
hs.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
