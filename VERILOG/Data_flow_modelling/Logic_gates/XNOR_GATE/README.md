# XNOR Gate

A 2-input XNOR gate implemented using **data-flow Verilog**. The output is `1` when both inputs have the same logic value.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `a`    | Input A     |
| `b`    | Input B     |

## Output

| Signal | Description      |
| ------ | ---------------- |
| `y`    | XNOR gate output |

## Logic

```text id="v5k2qa"
y = ~(a ^ b)
```

## Truth Table

| a | b | y |
| - | - | - |
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## Simulation

The testbench applies all four possible input combinations and monitors the output. FSDB waveform dumping is also enabled.

## Files

```text id="n3z8wp"
rtl/xnor_gate.v
tb/xnor_gate_tb.v
Makefile
xnor_wave_and_schematic.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
