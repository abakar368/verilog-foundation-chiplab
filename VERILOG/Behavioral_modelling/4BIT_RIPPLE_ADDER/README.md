# 4-Bit Ripple Carry Adder

A 4-bit binary adder implemented in Verilog. It adds two 4-bit inputs along with a carry-in and produces a 4-bit sum and carry-out.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `A`    | 4-bit input |
| `B`    | 4-bit input |
| `Cin`  | Carry-in    |

## Outputs

| Signal | Description           |
| ------ | --------------------- |
| `Sum`  | 4-bit addition result |
| `Cout` | Carry-out             |

The addition is performed as:

```text
A + B + Cin = {Cout, Sum}
```

## Simulation

The testbench checks normal addition, carry generation, and carry-in cases.

```text
A   B   Cin | Sum  Cout
------------|---------
3   2    0  |  5    0
7   8    0  | 15    0
15  1    0  |  0    1
10  5    1  |  0    1
```

## Files

```text
rtl/
└── ripple_adder.v            # Behavioral RTL
tb/
└── ripple_adder_tb.v         # Testbench
Makefile                   # Simulation commands
rca.png    # Simulation result
README.md                  # Project documentation
```

## Tools

* Synopsys
* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
