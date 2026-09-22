# 4-Bit Ripple Counter

A 4-bit asynchronous ripple counter built using T flip-flops, where each flip-flop is clocked by the output of the previous stage.

## Inputs

| Signal  | Width | Description                   |
| ------- | ----: | ----------------------------- |
| `clk`   |     1 | External clock input          |
| `rst_n` |     1 | Active-low asynchronous reset |

## Output

| Signal    | Width | Description   |
| --------- | ----: | ------------- |
| `counter` |     4 | Counter state |

## Operation

Each T flip-flop toggles its output on the falling edge of its clock.

* `ff0` is clocked by the external `clk`.
* `ff1` is clocked by `q0`.
* `ff2` is clocked by `q1`.
* `ff3` is clocked by `q2`.
* All flip-flops share the active-low asynchronous reset.

The counter output is formed as:

```verilog
assign counter = {q3, q2, q1, q0};
```

The counting sequence is:

```text id="c8w5mz"
0000 → 0001 → 0010 → 0011 → 0100 → ...
```

After `1111`, the counter wraps back to `0000`.

## Structure

```text
             ┌──────┐     ┌──────┐     ┌──────┐     ┌──────┐
clk ────────►│ T FF │ q0 ►│ T FF │ q1 ►│ T FF │ q2 ►│ T FF │
             │  ff0 │     │  ff1 │     │  ff2 │     │  ff3 │
             └──────┘     └──────┘     └──────┘     └──────┘
                │            │            │            │
                q0           q1           q2           q3
```

Because the clock propagates from one flip-flop to the next, the counter is called a **ripple counter** or **asynchronous counter**.

## T Flip-Flop

```verilog id="k2r7xp"
always @(negedge clk or negedge rst_n) begin
    if (!rst_n)
        q <= 1'b0;
    else
        q <= ~q;
end
```

## Simulation

The testbench:

* Generates a clock with a 10-time-unit period.
* Applies an active-low reset.
* Runs the counter for 180 additional time units.
* Displays the counter value using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="n4v8qy"
rtl/ripple_counter.v
tb/ripple_counter_tb.v
makefile
ripple_counter.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

```
```
