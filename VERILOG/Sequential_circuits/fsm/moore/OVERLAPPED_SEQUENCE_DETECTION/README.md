# Moore 1011 Overlapping Sequence Detector

A Moore FSM that detects the `1011` sequence and allows overlapping occurrences.

## Inputs

| Signal | Description                    |
| ------ | ------------------------------ |
| `clk`  | Clock                          |
| `rst`  | Active-high asynchronous reset |
| `din`  | Serial input bit               |

## Output

| Signal   | Description                       |
| -------- | --------------------------------- |
| `detect` | Goes high when `1011` is detected |

## FSM States

| State | Meaning          |
| ----- | ---------------- |
| S0    | No matching bits |
| S1    | Detected `1`     |
| S2    | Detected `10`    |
| S3    | Detected `101`   |
| S4    | Detected `1011`  |

Since this is a **Moore FSM**, `detect` depends only on the current state:

```text
detect = 1 when state = S4
detect = 0 otherwise
```

## State Transitions

| Current State | `din = 0` | `din = 1` |
| ------------- | --------- | --------- |
| S0            | S0        | S1        |
| S1            | S2        | S1        |
| S2            | S0        | S3        |
| S3            | S2        | S4        |
| S4            | S2        | S1        |

The transitions from S4 allow the detector to continue looking for another `1011` sequence, making this an **overlapping sequence detector**.

## Example

For the input:

```text
1011011
```

the FSM detects `1011` and can continue using the trailing bits to detect another occurrence.

## Simulation

The testbench:

* Generates a 10-time-unit clock.
* Applies an active-high asynchronous reset.
* Sends the sequence `1011011`.
* Monitors `din` and `detect`.
* Generates an FSDB waveform dump.

## Files

```text
rtl/moore.v
tb/tb.v
makefile
moore_overlap0.png
moore_overlap1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
