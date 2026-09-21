# 4-Bit Carry Look-Ahead Adder

A 4-bit Carry Look-Ahead Adder (CLA) implemented using **data-flow Verilog**. The design calculates carry signals directly using generate and propagate signals.

## Inputs

| Signal | Description         |
| ------ | ------------------- |
| `a`    | 4-bit input operand |
| `b`    | 4-bit input operand |
| `cin`  | Carry input         |

## Outputs

| Signal | Description           |
| ------ | --------------------- |
| `sum`  | 4-bit addition result |
| `cout` | Carry output          |

## Logic

The CLA uses:

```text
g = a & b
p = a ^ b
```

Carry signals are calculated directly from the generate (`g`), propagate (`p`), and input carry (`cin`) signals.

The sum is then calculated using:

```text
sum[0] = p[0] ^ cin
sum[1] = p[1] ^ c1
sum[2] = p[2] ^ c2
sum[3] = p[3] ^ c3
```

## Simulation

The testbench verifies the CLA using three different combinations of `a`, `b`, and `cin`.

FSDB waveform dumping is enabled for waveform analysis.

## Files

```text id="h4v2qw"
rtl/
└── cla_4bit.v             # Data-flow RTL
tb/
└── cla_4bit_tb.v          # Testbench
cla.png    # Simulation result
makefile                   # Simulation commands
README.md                  # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
