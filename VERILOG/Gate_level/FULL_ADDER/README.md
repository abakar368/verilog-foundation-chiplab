# Full Adder

A Full Adder implemented using **gate-level Verilog modeling** with `XOR`, `AND`, and `OR` gate primitives.

## Inputs

| Signal | Description      |
| ------ | ---------------- |
| `a`    | First input bit  |
| `b`    | Second input bit |
| `cin`  | Carry input      |

## Outputs

| Signal  | Description  |
| ------- | ------------ |
| `sum`   | Sum output   |
| `carry` | Carry output |

## Logic

The Full Adder adds three 1-bit inputs and produces a sum and carry.

| `a` | `b` | `cin` | `sum` | `carry` |
| --- | --- | ----- | ----- | ------- |
| 0   | 0   | 0     | 0     | 0       |
| 0   | 0   | 1     | 1     | 0       |
| 0   | 1   | 0     | 1     | 0       |
| 0   | 1   | 1     | 0     | 1       |
| 1   | 0   | 0     | 1     | 0       |
| 1   | 0   | 1     | 0     | 1       |
| 1   | 1   | 0     | 0     | 1       |
| 1   | 1   | 1     | 1     | 1       |

The logic is:

```text id="1j8d2k"
axb   = a ^ b
sum   = axb ^ cin

w1    = a & b
w2    = b & cin
w3    = a & cin

carry = w1 | w2 | w3
```

## Gate-Level Modeling

The design uses Verilog built-in gate primitives directly:

```verilog id="7q3z8m"
xor (axb, a, b);
xor (sum, axb, cin);

and (w1, a, b);
and (w2, b, cin);
and (w3, a, cin);

or (carry, w1, w2, w3);
```

## Simulation

The testbench applies all eight possible combinations of `a`, `b`, and `cin` and monitors the resulting `sum` and `carry` outputs.

## Files

```text id="m5x4qp"
rtl/full_adder.v
tb/full_adder_tb.v
Makefile
fa.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
