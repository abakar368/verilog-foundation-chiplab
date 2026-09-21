# 4-Bit Ripple Carry Adder

A 4-bit Ripple Carry Adder implemented using **structural Verilog modeling**. The design is built by connecting four 1-bit full adders, with the carry output of each stage connected to the carry input of the next stage.

## Inputs

| Signal   | Description          |
| -------- | -------------------- |
| `a[3:0]` | First 4-bit operand  |
| `b[3:0]` | Second 4-bit operand |
| `cin`    | Initial carry-in     |

## Outputs

| Signal     | Description     |
| ---------- | --------------- |
| `sum[3:0]` | 4-bit sum       |
| `cout`     | Final carry-out |

## Structure

The design contains:

* **Full Adder** — Built using primitive `xor`, `and`, and `or` gates.
* **4-Bit Ripple Carry Adder** — Instantiates four full adders.
* Carry propagates sequentially from `FA0` through `FA3`.

```text
a[0], b[0], cin ──> FA0 ──> c1
a[1], b[1], c1  ──> FA1 ──> c2
a[2], b[2], c2  ──> FA2 ──> c3
a[3], b[3], c3  ──> FA3 ──> cout
```

## Simulation

The testbench verifies several 4-bit addition cases, including zero addition, normal addition, carry generation, and maximum-value addition with carry-in.

## Files

```text id="8qf4wm"
rtl/4_bit_ripple_adder.v
tb/4_bit_ripple_adder_tb.v
makefile
rca.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
