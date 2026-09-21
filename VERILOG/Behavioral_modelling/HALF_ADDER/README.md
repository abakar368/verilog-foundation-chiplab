# Half Adder

A 1-bit half adder implemented using **behavioral Verilog**. It adds two 1-bit inputs and produces a sum and carry output.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `A`    | 1-bit input |
| `B`    | 1-bit input |

## Outputs

| Signal  | Description  |
| ------- | ------------ |
| `Sum`   | Sum output   |
| `Carry` | Carry output |

## Logic

```text id="gk4j2a"
Sum   = A ^ B
Carry = A & B
```

## Simulation

The testbench applies all **4 possible input combinations** to verify the half adder.

## Files

```text
rtl/
└── half_adder.v            # Behavioral RTL
tb/
└── half_adder_tb.v         # Testbench
ha.png    # Simulation result
makefile                   # Simulation commands
README.md                  # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
