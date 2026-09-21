# 1-to-2 Demultiplexer

A 1-to-2 Demultiplexer implemented using **data-flow Verilog**. The circuit routes a single input to one of two outputs based on the select signal.

## Inputs

| Signal | Description  |
| ------ | ------------ |
| `din`  | Data input   |
| `sel`  | Select input |

## Outputs

| Signal | Description                    |
| ------ | ------------------------------ |
| `y0`   | Output selected when `sel = 0` |
| `y1`   | Output selected when `sel = 1` |

## Logic

```text id="q8m4zs"
y0 = (~sel) & din
y1 = sel & din
```

## Truth Table

| din | sel | y0 | y1 |
| --- | --- | -- | -- |
| 0   | 0   | 0  | 0  |
| 0   | 1   | 0  | 0  |
| 1   | 0   | 1  | 0  |
| 1   | 1   | 0  | 1  |

## Simulation

The testbench applies all **4 possible combinations** of `din` and `sel` to verify the demultiplexer.

## Files

```text id="v2k7pn"
rtl/
└── demux_1x2.v             # Data-flow RTL
tb/
└── demux_1x2_tb.v          # Testbench
makefile                    # Simulation commands
demux_1x2.png     # Simulation result
README.md                   # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
