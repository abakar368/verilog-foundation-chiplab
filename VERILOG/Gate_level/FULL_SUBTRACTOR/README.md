# Full Subtractor

A Full Subtractor implemented using **gate-level Verilog modeling** with `XOR`, `NOT`, `AND`, and `OR` gate primitives.

## Inputs

| Signal | Description      |
| ------ | ---------------- |
| `a`    | Minuend input    |
| `b`    | Subtrahend input |
| `bin`  | Borrow input     |

## Outputs

| Signal | Description       |
| ------ | ----------------- |
| `diff` | Difference output |
| `bout` | Borrow output     |

## Logic

The Full Subtractor subtracts `b` and `bin` from `a` and produces a difference and borrow.

| `a` | `b` | `bin` | `diff` | `bout` |
| --- | --- | ----- | ------ | ------ |
| 0   | 0   | 0     | 0      | 0      |
| 0   | 0   | 1     | 1      | 1      |
| 0   | 1   | 0     | 1      | 1      |
| 0   | 1   | 1     | 0      | 1      |
| 1   | 0   | 0     | 1      | 0      |
| 1   | 0   | 1     | 0      | 0      |
| 1   | 1   | 0     | 0      | 0      |
| 1   | 1   | 1     | 1      | 1      |

The difference logic is:

```text id="k7c4mz"
w1   = a ^ b
diff = w1 ^ bin
```

The borrow logic is implemented through intermediate gate signals:

```text id="g2p8xw"
w2   = ~a
w3   = b & bin
w4   = w2 & b
w5   = w2 & bin
w6   = w3 | w4
bout = w6 | w5
```

## Gate-Level Modeling

The design uses Verilog built-in gate primitives directly:

```verilog id="v8j2qn"
xor (w1, a, b);
xor (diff, w1, bin);

not (w2, a);

and (w3, b, bin);
and (w4, w2, b);
and (w5, w2, bin);

or (w6, w3, w4);
or (bout, w6, w5);
```

## Simulation

The testbench applies all eight possible combinations of `a`, `b`, and `bin` and monitors the `diff` and `bout` outputs.

## Files

```text id="f3m9qx"
rtl/full_subtractor.v
tb/full_subtractor_tb.v
makefile
fs.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
