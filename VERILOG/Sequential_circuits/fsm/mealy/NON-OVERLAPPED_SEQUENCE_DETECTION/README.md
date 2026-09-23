# Mealy 1011 Non-Overlapping Sequence Detector

A Mealy finite state machine (FSM) that detects the serial bit pattern `1011` and produces a one-cycle `detect` pulse. After detecting the pattern, the FSM returns to the initial state to prevent overlapping detections.

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

When the FSM is in `S3` and receives `din = 1`, the complete `1011` sequence is detected.

```text id="j5f7qk"
S0 --1--> S1 --0--> S2 --1--> S3 --1--> S0
```

The `detect` output is asserted during the `S3 + din=1` transition.

## Non-Overlapping Detection

After detecting `1011`, the FSM returns directly to `S0`:

```verilog id="n2c8vp"
if (din) begin
    detect = 1;
    next_state = S0;
end
```

This prevents the detected sequence from being reused as part of another detection.

For example:

```text
Input:  1011011
Detect:    ↑
```

The first `1011` is detected, and the FSM restarts from `S0` for the remaining input.

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
| `S3`          |     1 | `S0`       |        1 |

## Mealy FSM

The output depends on both the current state and the input:

```text id="q4w8ms"
Current State + Input
          ↓
     Next State
          +
       Detect
```

This allows `detect` to become active on the same transition that completes the `1011` sequence.

## RTL

The design uses:

* A state register
* Next-state logic
* Mealy output logic
* Four FSM states
* Active-high asynchronous reset

## Simulation

The testbench:

* Generates a 10-time-unit clock.
* Applies reset initially.
* Sends the serial input sequence `1011011`.
* Uses a `send_bit` task to apply each input bit for one clock period.
* Monitors `din` and `detect`.
* Generates an FSDB waveform dump.

## Files

```text id="x9m4rt"
rtl/mealy.v
tb/tb.v
makefile
mealy_nonoverlap0.png
mealy_nonoverlap1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
