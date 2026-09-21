# 4-to-2 Encoder

A 4-to-2 encoder implemented using **behavioral Verilog**. It converts a 4-bit one-hot input into a 2-bit binary output.

## Inputs

| Signal | Description         |
| ------ | ------------------- |
| `D`    | 4-bit one-hot input |

## Output

| Signal | Description          |
| ------ | -------------------- |
| `Y`    | 2-bit encoded output |

## Truth Table

```text id="v6c0xa"
D     | Y
------|---
0001  | 00
0010  | 01
0100  | 10
1000  | 11
```

The `default` case outputs `00` for invalid or unsupported input combinations.

## Simulation

The testbench applies all four valid one-hot input combinations and monitors the encoded output.

## Files

```text
rtl/
└── encoder_4x2.v            # Behavioral RTL
tb/
└── encoder_4x2_tb.v         # Testbench
encoder_4x2.png    # Simulation result
makefile                   # Simulation commands
README.md                  # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
