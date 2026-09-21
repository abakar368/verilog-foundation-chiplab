# 4-to-2 Priority Encoder

A 4-to-2 priority encoder implemented using **data-flow Verilog**. The encoder gives priority to the highest-order active input, with `a3` having the highest priority.

## Inputs

| Signal | Description            |
| ------ | ---------------------- |
| `a0`   | Lowest-priority input  |
| `a1`   | Input                  |
| `a2`   | Input                  |
| `a3`   | Highest-priority input |

## Outputs

| Signal | Description                   |
| ------ | ----------------------------- |
| `y1`   | Most significant encoded bit  |
| `y0`   | Least significant encoded bit |

## Logic

```text id="h2k6vp"
y1 = a3 | a2
y0 = a3 | ((~a2) & a1)
```

## Priority

| Highest Active Input | y1 | y0 |
| -------------------- | -- | -- |
| `a3`                 | 1  | 1  |
| `a2`                 | 1  | 0  |
| `a1`                 | 0  | 1  |
| `a0`                 | 0  | 0  |

When multiple inputs are active, the highest-priority input determines the output.

## Simulation

The testbench applies multiple input combinations, including cases where more than one input is active, to verify the priority behavior.

## Files

```text id="p6v3rm"
rtl/
└── priority_encoder_4x2.v       # Data-flow RTL
tb/
└── priority_encoder_4x2_tb.v    # Testbench
Makefile                         # Simulation commands
priority_encoder.png          # Simulation result
README.md                        # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
