# Half Subtractor

A 1-bit Half Subtractor implemented using **data-flow Verilog**. The circuit subtracts one 1-bit input from another and produces a difference and borrow output.

## Inputs

| Signal | Description      |
| ------ | ---------------- |
| `a`    | Minuend input    |
| `b`    | Subtrahend input |

## Outputs

| Signal   | Description       |
| -------- | ----------------- |
| `diff`   | Difference output |
| `borrow` | Borrow output     |

## Logic

```text id="x1m7qk"
diff   = a ^ b
borrow = (~a) & b
```

## Truth Table

| a | b | diff | borrow |
| - | - | ---- | ------ |
| 0 | 0 | 0    | 0      |
| 0 | 1 | 1    | 1      |
| 1 | 0 | 1    | 0      |
| 1 | 1 | 0    | 0      |

## Simulation

The testbench applies all **4 possible input combinations** to verify the Half Subtractor.

## Files

```text id="c8n2vz"
rtl/
└── half_subtractor.v       # Data-flow RTL
tb/
└── half_subtractor_tb.v    # Testbench
Makefile                    # Simulation commands
hs.png     # Simulation result
README.md                   # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
