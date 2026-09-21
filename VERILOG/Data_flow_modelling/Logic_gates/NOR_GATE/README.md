# NOR Gate

A 2-input NOR gate implemented using **data-flow Verilog**. The output is the inverted result of the OR operation.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `a`    | Input A     |
| `b`    | Input B     |

## Output

| Signal | Description     |
| ------ | --------------- |
| `y`    | NOR gate output |

## Logic

```text
y = ~(a | b)
```

## Truth Table

| a | b | y |
| - | - | - |
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

## Simulation

The testbench applies all four possible input combinations and monitors the output. FSDB waveform dumping is also enabled.

## Files

```text
rtl/nor_gate.v
tb/nor_gate_tb.v
Makefile
nor_wave_and_schematic.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
