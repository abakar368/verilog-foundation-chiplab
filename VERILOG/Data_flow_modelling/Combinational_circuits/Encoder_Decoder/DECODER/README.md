# 2-to-4 Decoder

A 2-to-4 line decoder implemented using **data-flow Verilog**. The decoder uses an enable input to activate one of four outputs based on the 2-bit input combination.

## Inputs

| Signal | Description      |
| ------ | ---------------- |
| `a`    | MSB select input |
| `b`    | LSB select input |
| `en`   | Enable input     |

## Outputs

| Signal | Description          |
| ------ | -------------------- |
| `y0`   | Output for `ab = 00` |
| `y1`   | Output for `ab = 01` |
| `y2`   | Output for `ab = 10` |
| `y3`   | Output for `ab = 11` |

## Logic

```text id="v7n2qa"
y0 = en & ~a & ~b
y1 = en & ~a &  b
y2 = en &  a & ~b
y3 = en &  a &  b
```

## Truth Table

| en | a | b | y3 | y2 | y1 | y0 |
| -- | - | - | -- | -- | -- | -- |
| 0  | X | X | 0  | 0  | 0  | 0  |
| 1  | 0 | 0 | 0  | 0  | 0  | 1  |
| 1  | 0 | 1 | 0  | 0  | 1  | 0  |
| 1  | 1 | 0 | 0  | 1  | 0  | 0  |
| 1  | 1 | 1 | 1  | 0  | 0  | 0  |

## Simulation

The testbench first verifies the disabled state and then tests all four input combinations with `en = 1`.

## Files

```text id="j4q8sm"
rtl/
└── decoder_2x4.v           # Data-flow RTL
tb/
└── decoder_2x4_tb.v        # Testbench
Makefile                    # Simulation commands
decoder_2x4.png     # Simulation result
README.md                   # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
