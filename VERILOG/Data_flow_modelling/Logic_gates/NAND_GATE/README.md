# AND Gate

A 2-input AND gate implemented using **data-flow Verilog**. The output is `1` only when both inputs are `1`.

## Inputs

| Signal | Description |
| ------ | ----------- |
| `a`    | Input A     |
| `b`    | Input B     |

## Output

| Signal | Description     |
| ------ | --------------- |
| `y`    | AND gate output |

## Logic

```text id="8lq7hy"
y = a & b
```

## Truth Table

| a | b | y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## Simulation

The testbench applies all four possible input combinations and monitors the output. FSDB waveform dumping is also enabled.

## Files

```text id="3m3jmw"
rtl/and_gate.v
tb/and_gate_tb.v
Makefile
nand_wave_and_schematic.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
