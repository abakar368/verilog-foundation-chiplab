# Full Subtractor

A 1-bit Full Subtractor implemented using **data-flow Verilog**. The circuit subtracts two input bits and a borrow-in to produce a difference and borrow output.

## Inputs

| Signal | Description  |
| ------ | ------------ |
| `a`    | 1-bit input  |
| `b`    | 1-bit input  |
| `bin`  | Borrow input |

## Outputs

| Signal   | Description       |
| -------- | ----------------- |
| `diff`   | Difference output |
| `borrow` | Borrow output     |

## Logic

```text id="g6v9pm"
diff   = a ^ b ^ bin

borrow = (~a & b) |
         (~a & bin) |
         (b & bin)
```

## Simulation

The testbench applies all **8 possible combinations** of `a`, `b`, and `bin` to verify the subtraction logic.

## Files

```text id="q2f8cs"
rtl/
└── full_subtractor.v       # Data-flow RTL
tb/
└── full_subtractor_tb.v    # Testbench
makefile                    # Simulation commands
fs.png     # Simulation result
README.md                   # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
