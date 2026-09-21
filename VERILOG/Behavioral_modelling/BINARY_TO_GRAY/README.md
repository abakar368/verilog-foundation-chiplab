# 4-Bit Binary to Gray Code Converter

A 4-bit Binary-to-Gray code converter implemented using **behavioral Verilog**.

## Inputs

| Signal | Description        |
| ------ | ------------------ |
| `B`    | 4-bit binary input |

## Output

| Signal | Description            |
| ------ | ---------------------- |
| `G`    | 4-bit Gray code output |

The Gray code is generated using XOR operations between adjacent binary bits.

```text id="b7tq3k"
G[3] = B[3]
G[2] = B[3] ^ B[2]
G[1] = B[2] ^ B[1]
G[0] = B[1] ^ B[0]
```

## Simulation

The testbench cycles through all 16 possible 4-bit binary values and displays the corresponding Gray code.

## Files

```text
rtl/
└── binary_to_gray.v            # Behavioral RTL
tb/
└── binary_to_gray_tb.v         # Testbench
b_to_g.png    # Simulation result
makefile                   # Simulation commands
README.md                  # Project documentation
```

## Tools

* Synopsys
* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
