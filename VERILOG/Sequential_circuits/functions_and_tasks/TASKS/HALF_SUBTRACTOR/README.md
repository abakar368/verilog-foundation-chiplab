# Half Subtractor Using Task

A 1-bit half subtractor implemented using a reusable Verilog task to calculate the difference and borrow outputs.

## Inputs

| Input | Description |
| ----- | ----------- |
| `A`   | Minuend     |
| `B`   | Subtrahend  |

## Outputs

| Output   | Description |
| -------- | ----------- |
| `DIFF`   | Difference  |
| `BORROW` | Borrow      |

## Task

The `half_subtractor` task calculates both outputs:

```text
DIFF   = A ⊕ B
BORROW = A' · B
```

The task is called inside `always @(*)` so the outputs update whenever an input changes.

## Truth Table

| A | B | DIFF | BORROW |
| - | - | ---- | ------ |
| 0 | 0 | 0    | 0      |
| 0 | 1 | 1    | 1      |
| 1 | 0 | 1    | 0      |
| 1 | 1 | 0    | 0      |

## Simulation

The testbench:

* Tests all four input combinations
* Displays the calculated outputs using `$display`
* Generates an FSDB waveform using `$fsdbDumpfile` and `$fsdbDumpvars`

## Files

```text
rtl/half_subtractor.v
tb/tb.v
makefile
hs_task.png
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
* Half subtractor
* Multiple task output arguments
* FSDB waveform generation
