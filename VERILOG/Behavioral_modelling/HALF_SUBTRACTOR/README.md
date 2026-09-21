# Half Subtractor

A 1-bit half subtractor implemented using **behavioral Verilog**. It subtracts one 1-bit input from another and produces a difference and borrow output.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `A`    | Minuend     |
| `B`    | Subtrahend  |

## Outputs

| Signal       | Description       |
| ------------ | ----------------- |
| `Difference` | Difference output |
| `Borrow`     | Borrow output     |

## Logic

```text id="l8j7q3"
Difference = A ^ B
Borrow     = (~A) & B
```

## Simulation

The testbench applies all **4 possible input combinations** to verify the half subtractor.

## Files

```text id="qq9z0v"
rtl/
└── half_subtractor.v          # Behavioral RTL

tb/
└── half_subtractor_tb.v       # Testbench

Makefile                       # Simulation commands
hs.png        # Simulation result
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
