# SR Latch

A behavioral model of an active-low SR latch with complementary outputs.

## Inputs

| Input | Description            |
| ----- | ---------------------- |
| `s_n` | Active-low Set input   |
| `r_n` | Active-low Reset input |

## Outputs

| Output  | Description       |
| ------- | ----------------- |
| `q`     | Stored output     |
| `q_bar` | Complement of `q` |

## Operation

The `_n` suffix indicates that the inputs are **active-low**.

```text id="m4gq1w"
S_n = 0 → Set
R_n = 0 → Reset
S_n = 1, R_n = 1 → Hold
S_n = 0, R_n = 0 → Invalid
```

## Truth Table

| S_n | R_n | Q    | Operation |
| --- | --- | ---- | --------- |
| 0   | 0   | X    | Invalid   |
| 0   | 1   | 1    | Set       |
| 1   | 0   | 0    | Reset     |
| 1   | 1   | Hold | No change |

`X` represents an invalid or unknown state.

## Logic

The complement output is continuously generated using:

```verilog id="m1w8xs"
assign q_bar = ~q;
```

The latch behavior is modeled using a `case` statement inside `always @(*)`.

## Simulation

The testbench verifies:

* Hold condition
* Set operation
* Reset operation
* State retention
* Invalid condition
* `$monitor` output
* FSDB waveform generation

## Files

```text id="q8z2np"
rtl/sr_latch.v
tb/sr_latch_tb.v
makefile
sr_latch0.png
sr_latch1.png
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
* Active-low inputs
* Level-sensitive storage
* Set and Reset
* Hold condition
* Invalid condition
* Latch inference
* Complementary output
* FSDB waveform generation
