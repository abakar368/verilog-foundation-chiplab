# AND Gate

A simple 2-input AND gate implemented in Verilog.

The output is `1` only when both inputs are `1`.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `A`    | 1-bit input |
| `B`    | 1-bit input |

## Output

| Signal | Description |
| ------ | ----------- |
| `Y`    | AND result  |

## Truth Table

```text
A B | Y
----|---
0 0 | 0
0 1 | 0
1 0 | 0
1 1 | 1
```

## Files

```text
rtl/
└── and_gate.v            # Behavioral RTL
tb/
└── and_gate_tb.v         # Testbench
and_gate.png    # Simulation result
makefile                   # Simulation commands
README.md                  # Project documentation
```

## Tools

* Synopsys
* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
