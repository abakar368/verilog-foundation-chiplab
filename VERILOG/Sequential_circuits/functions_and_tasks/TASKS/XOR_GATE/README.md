# XOR Gate Using Task

A 2-input XOR gate implemented using a reusable Verilog task.

## Inputs

| Input | Description  |
| ----- | ------------ |
| `A`   | First input  |
| `B`   | Second input |

## Output

| Output | Description |
| ------ | ----------- |
| `Y`    | XOR result  |

## Logic

The `xor_task` performs the XOR operation:

```text id="q7m2ka"
Y = A ^ B
```

The task is called inside `always @(*)`, providing combinational behavior.

## Truth Table

| A | B | Y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

## Simulation

The testbench:

* Tests all four input combinations
* Displays the input and output values using `$display`
* Generates an FSDB waveform using `$fsdbDumpfile` and `$fsdbDumpvars`

## Files

```text id="v2k8nc"
rtl/xor_gate.v
tb/tb.v
makefile
xor_gate_task.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

## Key Concepts

* Verilog tasks
* Combinational logic
* XOR gate
* Task output arguments
* FSDB waveform generation
