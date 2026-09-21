# Full Adder Using Half Adders

A 1-bit Full Adder implemented using **structural Verilog modeling**. The design is constructed hierarchically from two Half Adders and an OR gate.

## Inputs

| Signal | Description  |
| ------ | ------------ |
| `a`    | First input  |
| `b`    | Second input |
| `cin`  | Carry-in     |

## Outputs

| Signal  | Description  |
| ------- | ------------ |
| `sum`   | Sum output   |
| `carry` | Carry output |

## Structure

The design contains:

* **Half Adder** — Built using `xor` and `and` gate primitives.
* **Full Adder** — Instantiates two Half Adders and an OR gate.
* The first Half Adder adds `a` and `b`.
* The second Half Adder adds the intermediate sum to `cin`.
* The two carry outputs are combined using an OR gate.

```text id="j5r3kx"
       a ─────┐
              ├─> HA1 ──> s1 ──┐
       b ─────┘                 ├─> HA2 ──> sum
                         cin ───┘

       c1 ─────┐
               ├─> OR ──> carry
       c2 ─────┘
```

## Truth Table

| a | b | cin | sum | carry |
| - | - | --- | --- | ----- |
| 0 | 0 | 0   | 0   | 0     |
| 0 | 0 | 1   | 1   | 0     |
| 0 | 1 | 0   | 1   | 0     |
| 0 | 1 | 1   | 0   | 1     |
| 1 | 0 | 0   | 1   | 0     |
| 1 | 0 | 1   | 0   | 1     |
| 1 | 1 | 0   | 0   | 1     |
| 1 | 1 | 1   | 1   | 1     |

## Simulation

The testbench uses a loop to apply all 8 possible combinations of `a`, `b`, and `cin`, verifying the complete Full Adder truth table.

## Files

```text id="v8n2qm"
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
