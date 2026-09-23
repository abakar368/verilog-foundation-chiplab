# OR Gate Using Task

A 2-input OR gate implemented using a reusable Verilog task.

## Inputs

| Input | Description  |
| ----- | ------------ |
| `A`   | First input  |
| `B`   | Second input |

## Output

| Output | Description |
| ------ | ----------- |
| `Y`    | OR result   |

## Logic

The `or_task` performs the OR operation:

```text id="k9xj2p"
Y = A | B
```

The task is called inside `always @(*)`, providing combinational behavior.

## Truth Table

| A | B | Y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

## Simulation

The testbench:

* Tests all four input combinations
* Displays the input and output values using `$display`
* Generates an FSDB waveform using `$fsdbDumpfile` and `$fsdbDumpvars`

## Files

```text id="m4h7q1"
rtl/or_gate.v
tb/tb.v
makefile
or_gate_task.png
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
* OR gate
* Task output arguments
* FSDB waveform generation
