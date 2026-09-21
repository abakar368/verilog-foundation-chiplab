# OR Gate

A 2-input OR gate implemented using **data-flow-style Verilog** with an `always @(*)` combinational block. The output is `1` when at least one input is `1`.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `a`    | Input A     |
| `b`    | Input B     |

## Output

| Signal | Description    |
| ------ | -------------- |
| `y`    | OR gate output |

## Logic

```text id="q7m2kp"
y = a | b
```

## Truth Table

| a | b | y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

## Simulation

The testbench applies all four possible input combinations and monitors the output. FSDB waveform dumping is also enabled.

## Files

```text id="b8v5rz"
rtl/or_gate.v
tb/or_gate_tb.v
Makefile
or_wave_and_schematic.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
