# Mealy 1011 Overlapping Sequence Detector

A Mealy finite state machine (FSM) that detects the serial bit pattern `1011` and supports overlapping pattern detection.

## Inputs

| Signal | Width | Description                    |
| ------ | ----: | ------------------------------ |
| `clk`  |     1 | Clock input                    |
| `rst`  |     1 | Active-high asynchronous reset |
| `din`  |     1 | Serial input bit               |

## Output

| Signal   | Width | Description                      |
| -------- | ----: | -------------------------------- |
| `detect` |     1 | Asserted when `1011` is detected |

## FSM States

The FSM uses four states to track the progress of the `1011` pattern:

| State | Meaning          |
| ----- | ---------------- |
| `S0`  | No matching bits |
| `S1`  | Detected `1`     |
| `S2`  | Detected `10`    |
| `S3`  | Detected `101`   |

The sequence is detected when the FSM is in `S3` and receives `din = 1`.

```text id="u5k8rx"
S0 --1--> S1 --0--> S2 --1--> S3
 ↑                         |
 |                         | 1 / detect
 └──────────────── S1 <────┘
```

## Overlapping Detection

When `1011` is detected, the FSM transitions from `S3` back to `S1` rather than `S0`:

```verilog id="v2n6pc"
if (din) begin
    next_state = S1;
    detect = 1;
end
```

This preserves the final `1` of the detected sequence as the beginning of a possible new `1011` sequence.

For example:

```text id="a7m3qd"
Input:  1011011
Detect:    ↑   ↑
```

The detector can therefore recognize patterns that overlap.

## State Transition Table

| Current State | `din` | Next State | `detect` |
| ------------- | ----: | ---------- | -------: |
| `S0`          |     0 | `S0`       |        0 |
| `S0`          |     1 | `S1`       |        0 |
| `S1`          |     0 | `S2`       |        0 |
| `S1`          |     1 | `S1`       |        0 |
| `S2`          |     0 | `S0`       |        0 |
| `S2`          |     1 | `S3`       |        0 |
| `S3`          |     0 | `S2`       |        0 |
| `S3`          |     1 | `S1`       |        1 |

## Mealy FSM

The `detect` output depends on both the current state and the input:

```text id="f3r9kw"
Current State + din
        ↓
  Next State + detect
```

The output becomes `1` when `S3` receives `din = 1`, completing the `1011` pattern.

## RTL

The design consists of:

* State register
* Next-state logic
* Mealy output logic
* Four FSM states
* Active-high asynchronous reset

## Simulation

The testbench:

* Generates a 10-time-unit clock.
* Applies an initial reset.
* Sends the serial sequence `1011011`.
* Uses a `send_bit` task to apply each bit for one clock period.
* Monitors `din` and `detect`.
* Generates an FSDB waveform dump.

## Files

```text id="m8q4tv"
rtl/mealy.v
tb/tb.v
makefile
mealy_overlap.png
mealy_overlap1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
