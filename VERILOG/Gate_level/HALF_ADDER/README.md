# Half Adder

A Half Adder implemented using **gate-level Verilog modeling** with `XOR` and `AND` gate primitives.

## Inputs

| Signal | Description      |
| ------ | ---------------- |
| `a`    | First input bit  |
| `b`    | Second input bit |

## Outputs

| Signal  | Description  |
| ------- | ------------ |
| `sum`   | Sum output   |
| `carry` | Carry output |

## Logic

The Half Adder adds two 1-bit inputs and produces a sum and carry.

| `a` | `b` | `sum` | `carry` |
| --- | --- | ----- | ------- |
| 0   | 0   | 0     | 0       |
| 0   | 1   | 1     | 0       |
| 1   | 0   | 1     | 0       |
| 1   | 1   | 0     | 1       |

The logic is:

```text id="x2v8nc"
sum   = a ^ b
carry = a & b
```

## Gate-Level Modeling

The design uses Verilog built-in gate primitives directly:

```verilog id="r8k3wp"
xor (sum, a, b);
and (carry, a, b);
```

## Simulation

The testbench applies all four possible combinations of `a` and `b` and monitors the `sum` and `carry` outputs.

## Files

```text id="n4q6vs"
rtl/half_adder.v
tb/half_adder_tb.v
makefile
ha.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
