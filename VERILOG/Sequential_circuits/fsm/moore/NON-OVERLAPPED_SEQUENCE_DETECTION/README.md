# Moore 1011 Non-Overlapping Sequence Detector

A Moore finite state machine (FSM) that detects the serial bit pattern `1011` and generates a one-cycle `detect` pulse without allowing overlapping detections.

## Inputs

| Signal | Width | Description                    |
| ------ | ----: | ------------------------------ |
| `clk`  |     1 | Clock input                    |
| `rst`  |     1 | Active-high asynchronous reset |
| `din`  |     1 | Serial input bit               |

## Output

| Signal   | Width | Description                            |
| -------- | ----: | -------------------------------------- |
| `detect` |     1 | Asserted when `1011` has been detected |

## FSM States

The FSM uses five states:

| State | Meaning          |
| ----- | ---------------- |
| `S0`  | No matching bits |
| `S1`  | Detected `1`     |
| `S2`  | Detected `10`    |
| `S3`  | Detected `101`   |
| `S4`  | Detected `1011`  |

The sequence is completed when the FSM reaches `S4`.

```text id="x6r9pm"
S0 --1--> S1 --0--> S2 --1--> S3 --1--> S4
 ↑                                      |
 └──────────────────────────────────────┘
```

After entering `S4`, the FSM returns to `S0`, preventing the detected pattern from overlapping with another detection.

## State Transition Table

| Current State | `din` | Next State |
| ------------- | ----: | ---------- |
| `S0`          |     0 | `S0`       |
| `S0`          |     1 | `S1`       |
| `S1`          |     0 | `S2`       |
| `S1`          |     1 | `S1`       |
| `S2`          |     0 | `S0`       |
| `S2`          |     1 | `S3`       |
| `S3`          |     0 | `S2`       |
| `S3`          |     1 | `S4`       |
| `S4`          |   0/1 | `S0`       |

## Moore FSM

In a Moore FSM, the output depends **only on the current state**.

```verilog id="j3k7vz"
always @(*) begin
    if(state == S4)
        detect = 1;
    else
        detect = 0;
end
```

Therefore, `detect` is asserted whenever the FSM is in `S4`.

```text id="b5q2nw"
Current State
     ↓
   detect
```

This differs from the Mealy implementation, where `detect` depends on both the current state and `din`.

## Non-Overlapping Detection

After reaching the detection state:

```verilog id="r8m4cx"
S4:
    next_state = S0;
```

The FSM returns to `S0` regardless of the next input, ensuring that the detected `1011` sequence is not reused as part of another sequence.

## RTL

The design consists of:

* State register
* Next-state logic
* Moore output logic
* Five FSM states
* Active-high asynchronous reset

## Simulation

The testbench:

* Generates a 10-time-unit clock.
* Applies an initial reset.
* Sends the serial sequence `1011011`.
* Uses a `send_bit` task to apply each input bit for one clock period.
* Monitors `din` and `detect`.
* Generates an FSDB waveform dump.

## Files

```text id="v7p3mk"
rtl/moore.v
tb/tb.v
makefile
moore_nonoverlap0.png
moore_nonoverlap1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
