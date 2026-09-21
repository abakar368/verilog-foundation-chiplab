# 4-to-2 Encoder

A 4-to-2 encoder implemented using **data-flow Verilog**. The encoder converts a 4-bit one-hot input into a 2-bit binary output.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `a0`   | Input 0     |
| `a1`   | Input 1     |
| `a2`   | Input 2     |
| `a3`   | Input 3     |

## Outputs

| Signal | Description                  |
| ------ | ---------------------------- |
| `y1`   | Most significant output bit  |
| `y0`   | Least significant output bit |

## Logic

```text id="v8k3rm"
y1 = a2 | a3
y0 = a1 | a3
```

## Truth Table

For valid one-hot inputs:

| a3 | a2 | a1 | a0 | y1 | y0 |
| -- | -- | -- | -- | -- | -- |
| 0  | 0  | 0  | 1  | 0  | 0  |
| 0  | 0  | 1  | 0  | 0  | 1  |
| 0  | 1  | 0  | 0  | 1  | 0  |
| 1  | 0  | 0  | 0  | 1  | 1  |

## Simulation

The testbench applies each of the four valid one-hot input combinations and monitors the encoded 2-bit output.

## Files

```text id="c5n7qx"
rtl/
└── encoder_4x2.v           # Data-flow RTL
tb/
└── encoder_4x2_tb.v        # Testbench
Makefile                    # Simulation commands
encoder_4x2.png     # Simulation result
README.md                   # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
