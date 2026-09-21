# 4-to-1 Multiplexer Using 2-to-1 Multiplexers

A 4-to-1 Multiplexer implemented using **structural Verilog modeling**. The design is constructed hierarchically from three 2-to-1 multiplexers.

## Inputs

| Signal | Description          |
| ------ | -------------------- |
| `i0`   | Input 0              |
| `i1`   | Input 1              |
| `i2`   | Input 2              |
| `i3`   | Input 3              |
| `s0`   | First select signal  |
| `s1`   | Second select signal |

## Output

| Signal | Description     |
| ------ | --------------- |
| `y`    | Selected output |

## Structure

The design contains:

* **2-to-1 Multiplexer** — Built using `not`, `and`, and `or` gate primitives.
* **4-to-1 Multiplexer** — Instantiates three 2-to-1 multiplexers.
* Two first-stage multiplexers select between `i0/i1` and `i2/i3`.
* A third multiplexer selects between the two intermediate outputs.

```text id="q1k7vm"
i0 ──┐
i1 ──┴─> M0 ──┐
              ├─> M2 ──> y
i2 ──┐        │
i3 ──┴─> M1 ──┘
```

## Selection

| s1 | s0 | y  |
| -- | -- | -- |
| 0  | 0  | i0 |
| 0  | 1  | i1 |
| 1  | 0  | i2 |
| 1  | 1  | i3 |

## Simulation

The testbench applies fixed input values and cycles through all four select combinations to verify the correct input is routed to the output.

## Files

```text id="m5z8cx"
rtl/4x1_mux.v
tb/4x1_mux_tb.v
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
