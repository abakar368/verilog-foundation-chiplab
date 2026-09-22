# 4-to-2 Encoder

A 4-to-2 Encoder implemented using **gate-level Verilog modeling** with `OR` gate primitives.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `d0`   | Input 0     |
| `d1`   | Input 1     |
| `d2`   | Input 2     |
| `d3`   | Input 3     |

## Outputs

| Signal | Description                  |
| ------ | ---------------------------- |
| `y1`   | Most significant output bit  |
| `y0`   | Least significant output bit |

## Logic

The encoder assumes that only one input is active at a time.

| `d0` | `d1` | `d2` | `d3` | `y1` | `y0` |
| ---- | ---- | ---- | ---- | ---- | ---- |
| 1    | 0    | 0    | 0    | 0    | 0    |
| 0    | 1    | 0    | 0    | 0    | 1    |
| 0    | 0    | 1    | 0    | 1    | 0    |
| 0    | 0    | 0    | 1    | 1    | 1    |

The logic is:

```text id="pmx5y4"
y1 = d2 | d3
y0 = d1 | d3
```

## Gate-Level Modeling

The encoder is implemented using Verilog built-in `OR` gate primitives:

```verilog id="w31w0t"
or (y1, d2, d3);
or (y0, d1, d3);
```

## Simulation

The testbench activates each input individually and monitors the two encoded output bits to verify the expected binary code.

## Files

```text id="y1a6rm"
rtl/encoder_4x2.v
tb/encoder_4x2_tb.v
Makefile
encoder_4x2.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
