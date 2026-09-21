# 1-Bit Comparator

A simple 1-bit digital comparator implemented in Verilog. The circuit compares two 1-bit inputs and indicates whether `A` is greater than, equal to, or less than `B`.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `A`    | 1-bit input |
| `B`    | 1-bit input |

## Outputs

| Signal    | Description       |
| --------- | ----------------- |
| `Greater` | `1` when `A > B`  |
| `Equal`   | `1` when `A == B` |
| `Less`    | `1` when `A < B`  |

Only one output is asserted at a time.

## Simulation

The testbench checks all four possible input combinations:

```text
A B | Greater Equal Less
----|-------------------
0 0 |   0      1     0
0 1 |   0      0     1
1 0 |   1      0     0
1 1 |   0      1     0
```

## Files

```text
rtl/
└── comparator_1bit.v            # Behavioral RTL
tb/
└── comparator_1bit_tb.v         # Testbench
1bitcomparator.png    # Simulation result
Makefile                   # Simulation commands
README.md                  # Project documentation
```

## Tools

* Synopsys
* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
