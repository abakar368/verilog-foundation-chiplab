# Full Subtractor

A 1-bit full subtractor implemented using **behavioral Verilog**. It subtracts two 1-bit inputs with a borrow-in and produces a difference and borrow-out.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `A`    | Minuend     |
| `B`    | Subtrahend  |
| `Bin`  | Borrow-in   |

## Outputs

| Signal       | Description       |
| ------------ | ----------------- |
| `Difference` | Difference output |
| `Borrow`     | Borrow-out        |

## Logic

```text id="1m3qac"
Difference = A ^ B ^ Bin
Borrow     = (~A & B) | (~(A ^ B) & Bin)
```

## Simulation

The testbench applies all **8 possible input combinations** to verify the full subtractor.

## Files

```text
rtl/
└── full_subtractor.v            # Behavioral RTL
tb/
└── full_subtractor_tb.v         # Testbench
fs.png    # Simulation result
makefile                   # Simulation commands
README.md                  # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* gVim