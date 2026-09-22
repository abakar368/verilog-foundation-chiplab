# 4-Bit Johnson Counter

A 4-bit Johnson (twisted-ring) counter that shifts the inverted least-significant bit back into the most-significant bit.

## Inputs

| Signal  | Width | Description                  |
| ------- | ----: | ---------------------------- |
| `clk`   |     1 | Clock input                  |
| `rst_n` |     1 | Active-low synchronous reset |

## Output

| Signal    | Width | Description           |
| --------- | ----: | --------------------- |
| `counter` |     4 | Johnson counter state |

## Operation

On every rising edge of `clk`:

* When `rst_n = 0`, the counter resets to `0000`.
* When `rst_n = 1`, the counter shifts right.
* The inverted LSB (`~counter[0]`) is fed back into the MSB.

```text
counter <= {~counter[0], counter[3:1]};
```

Starting from `0000`, the 4-bit Johnson counter produces **8 unique states**:

```text
0000
1000
1100
1110
1111
0111
0011
0001
0000
...
```

A Johnson counter with `n` flip-flops produces `2n` states, so a 4-bit counter has **8 states**.

## RTL

```verilog
always @(posedge clk) begin
    if (!rst_n)
        counter <= 4'b0000;
    else
        counter <= {~counter[0], counter[3:1]};
end
```

## Simulation

The testbench:

* Generates a clock with a 10-time-unit period.
* Holds reset low initially.
* Releases reset after 15 time units.
* Runs for 200 time units to observe multiple Johnson counter cycles.
* Displays the counter state using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text
rtl/johnson_counter.v
tb/johnson_counter_tb.v
makefile
johnson_counter.png
johnson_counter0.png
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
