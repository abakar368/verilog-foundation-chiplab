# 4-Bit Comparator

A simple 4-bit digital comparator implemented in Verilog. It compares two 4-bit inputs and indicates whether `A` is greater than, equal to, or less than `B`.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `A`    | 4-bit input |
| `B`    | 4-bit input |

## Outputs

| Signal    | Description       |
| --------- | ----------------- |
| `Greater` | `1` when `A > B`  |
| `Equal`   | `1` when `A == B` |
| `Less`    | `1` when `A < B`  |

Only one output is asserted at a time.

## Simulation

The testbench checks several comparison cases, including equal, greater-than, and less-than conditions.

```text
A   B   | Greater Equal Less
--------|-------------------
4   4   |   0      1     0
7   2   |   1      0     0
1   9   |   0      0     1
15  15  |   0      1     0
```

## Files

```text
rtl/
└── comparator_4bit.v            # Behavioral RTL
tb/
└── comparator_4bit_tb.v         # Testbench
4bitcomparator.png    # Simulation result
Makefile                   # Simulation commands
README.md                  # Project documentation
```

## Tools

* Synopsys
* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
