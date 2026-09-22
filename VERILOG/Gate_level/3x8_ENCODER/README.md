# 8-to-3 Encoder

An 8-to-3 Encoder implemented using **gate-level Verilog modeling** with `OR` gate primitives.

## Inputs

| Signal    | Description           |
| --------- | --------------------- |
| `d0`–`d7` | One-hot input signals |

## Outputs

| Signal | Description                  |
| ------ | ---------------------------- |
| `y2`   | Most significant output bit  |
| `y1`   | Output bit                   |
| `y0`   | Least significant output bit |

## Logic

The encoder assumes that only one input is active at a time.

| Active Input | `y2` | `y1` | `y0` |
| ------------ | ---: | ---: | ---: |
| `d0`         |    0 |    0 |    0 |
| `d1`         |    0 |    0 |    1 |
| `d2`         |    0 |    1 |    0 |
| `d3`         |    0 |    1 |    1 |
| `d4`         |    1 |    0 |    0 |
| `d5`         |    1 |    0 |    1 |
| `d6`         |    1 |    1 |    0 |
| `d7`         |    1 |    1 |    1 |

The logic is:

```text
y2 = d4 | d5 | d6 | d7
y1 = d2 | d3 | d6 | d7
y0 = d1 | d3 | d5 | d7
```

## Gate-Level Modeling

The encoder is implemented using Verilog built-in `OR` gate primitives:

```verilog
or (y2, d4, d5, d6, d7);
or (y1, d2, d3, d6, d7);
or (y0, d1, d3, d5, d7);
```

## Simulation

The testbench activates each input individually from `d0` through `d7` and monitors the three output bits to verify the corresponding binary code.

## Files

```text
rtl/encoder_8x3.v
tb/encoder_8x3_tb.v
Makefile
encoder_8x3.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
