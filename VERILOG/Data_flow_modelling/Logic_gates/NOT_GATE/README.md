# NOT Gate

A 1-input NOT gate implemented using **data-flow Verilog**. The output is the logical inverse of the input.

## Input

| Signal | Description |
| ------ | ----------- |
| `a`    | Input       |

## Output

| Signal | Description     |
| ------ | --------------- |
| `y`    | Inverted output |

## Logic

```text id="w7p4ks"
y = ~a
```

## Truth Table

| a | y |
| - | - |
| 0 | 1 |
| 1 | 0 |

## Simulation

The testbench applies both possible input values and monitors the output. FSDB waveform dumping is also enabled.

## Files

```text id="x1q8nm"
rtl/not_gate.v
tb/not_gate_tb.v
Makefile
not_wave_and_schematic.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
