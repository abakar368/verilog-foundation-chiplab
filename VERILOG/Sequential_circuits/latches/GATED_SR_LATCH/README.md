# Gated SR Latch

A level-sensitive SR latch with an active-high enable input that controls when the Set and Reset inputs can affect the stored state.

## Inputs

| Input | Description        |
| ----- | ------------------ |
| `s`   | Set input          |
| `r`   | Reset input        |
| `en`  | Active-high enable |

## Outputs

| Output  | Description       |
| ------- | ----------------- |
| `q`     | Stored output     |
| `q_bar` | Complement of `q` |

## Operation

The enable input controls the latch:

```text id="qj6y6k"
EN = 0 → Hold previous state
EN = 1 → S and R control the latch
```

When enabled, the SR latch follows the standard SR behavior.

## Truth Table

| EN | S | R | Q    | Operation |
| -- | - | - | ---- | --------- |
| 0  | X | X | Hold | Disabled  |
| 1  | 0 | 0 | Hold | No change |
| 1  | 0 | 1 | 0    | Reset     |
| 1  | 1 | 0 | 1    | Set       |
| 1  | 1 | 1 | X    | Invalid   |

`X` represents an unknown or invalid condition.

## Logic

The output complement is continuously generated using:

```verilog id="z7d9wj"
assign q_bar = ~q;
```

The SR behavior is implemented using a `case` statement inside `always @(*)`.

## Simulation

The testbench verifies:

* Latch disabled behavior
* Hold condition
* Set operation
* Reset operation
* State retention
* Invalid `S=1, R=1` condition
* `$monitor` output
* FSDB waveform generation

## Files

```text id="4m5d7a"
rtl/gated_sr_latch.v
tb/gated_sr_latch_tb.v
makefile
gated_sr_latch0.png
gated_sr_latch1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

## Key Concepts

* SR latch
* Gated latch
* Level-sensitive storage
* Enable control
* Set and Reset
* Hold condition
* Invalid SR condition
* Latch inference
* FSDB waveform generation
