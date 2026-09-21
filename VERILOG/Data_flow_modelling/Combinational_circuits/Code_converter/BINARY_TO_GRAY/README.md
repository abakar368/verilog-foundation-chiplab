# Binary to Gray Code Converter

A 4-bit Binary-to-Gray code converter implemented using **data-flow Verilog**.

## Input

| Signal | Description        |
| ------ | ------------------ |
| `bin`  | 4-bit binary input |

## Output

| Signal | Description            |
| ------ | ---------------------- |
| `gray` | 4-bit Gray code output |

## Logic

The Gray code is generated using XOR operations:

```text
gray[3] = bin[3]
gray[2] = bin[3] ^ bin[2]
gray[1] = bin[2] ^ bin[1]
gray[0] = bin[1] ^ bin[0]
```

## Simulation

The testbench verifies the converter with:

```text
0000 → 0000
0001 → 0001
0010 → 0011
1011 → 1110
```

FSDB waveform dumping is also enabled for waveform analysis.

## Files

```text id="k3r8px"
rtl/
└── binary_to_gray.v       # Data-flow RTL
tb/
└── binary_to_gray_tb.v    # Testbench
b_to_g.png    # Simulation result
Makefile                   # Simulation commands
README.md                  # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
