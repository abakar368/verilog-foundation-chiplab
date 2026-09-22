# 1-to-2 Demultiplexer

A 1-to-2 Demultiplexer implemented using **gate-level Verilog modeling** with `NOT` and `AND` gate primitives.

## Inputs

| Signal | Description  |
| ------ | ------------ |
| `d`    | Data input   |
| `sel`  | Select input |

## Outputs

| Signal | Description |
| ------ | ----------- |
| `y0`   | Output 0    |
| `y1`   | Output 1    |

## Logic

The select signal determines which output receives the input data.

| `sel` | `y0` | `y1` |
| ----- | ---- | ---- |
| 0     | `d`  | 0    |
| 1     | 0    | `d`  |

The design uses one `NOT` gate to generate `nsel`, followed by two `AND` gates:

```text
nsel = ~sel
y0   = d & nsel
y1   = d & sel
```

## Gate-Level Modeling

The circuit is described using Verilog built-in gate primitives:

```verilog
not (nsel, sel);
and (y0, d, nsel);
and (y1, d, sel);
```

## Simulation

The testbench applies different combinations of `d` and `sel` and monitors both outputs to verify the demultiplexer operation.

## Files

```text
rtl/demux_1x2.v
tb/demux_1x2_tb.v
makefile
demux_1x2.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
