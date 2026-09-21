# XOR Gate

A 2-input XOR gate implemented using **data-flow Verilog**. The output is `1` when the two inputs have different logic values.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `a`    | Input A     |
| `b`    | Input B     |

## Output

| Signal | Description     |
| ------ | --------------- |
| `y`    | XOR gate output |

## Logic

```text id="h2m6qk"
y = a ^ b
```

## Truth Table

| a | b | y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

## Simulation

The testbench applies all four possible input combinations and monitors the output. FSDB waveform dumping is also enabled.

## Files

```text id="q6r1mv"
rtl/xor_gate.v
tb/xor_gate_tb.v
Makefile
xor_wave_and_schematic.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
