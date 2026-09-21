# Full Adder

A 1-bit full adder implemented using **behavioral Verilog**. It adds two 1-bit inputs and a carry-in, producing a sum and carry-out.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `A`    | 1-bit input |
| `B`    | 1-bit input |
| `Cin`  | Carry-in    |

## Outputs

| Signal | Description |
| ------ | ----------- |
| `Sum`  | Sum output  |
| `Cout` | Carry-out   |

## Logic

```text
Sum  = A ^ B ^ Cin
Cout = (A & B) | (Cin & (A ^ B))
```

## Simulation

The testbench applies all **8 possible input combinations** to verify the full adder.

## Files

```text
rtl/
└── full_adder.v            # Behavioral RTL
tb/
└── full_adder_tb.v         # Testbench
fa.png    # Simulation result
makefile                   # Simulation commands
README.md                  # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
