# 2-to-4 Decoder

A 2-to-4 decoder implemented using **behavioral Verilog**. It converts a 2-bit input into a 4-bit one-hot output.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `A`    | 2-bit input |

## Output

| Signal | Description          |
| ------ | -------------------- |
| `Y`    | 4-bit decoded output |

## Truth Table

```text id="7rj1mw"
A  | Y
---|------
00 | 0001
01 | 0010
10 | 0100
11 | 1000
```

Only one output bit is high for each input combination.

## Simulation

The testbench applies all four possible input combinations and monitors the decoded output.

## Files

```text
rtl/
└── decoder_2x4.v            # Behavioral RTL
tb/
└── decoder_2x4_tb.v         # Testbench
decoder_2x4.png    # Simulation result
makefile                   # Simulation commands
README.md                  # Project documentation
```

## Tools

* Synopsys
* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
