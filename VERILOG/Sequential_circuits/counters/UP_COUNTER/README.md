# 4-Bit Up Counter

A 4-bit synchronous up counter that increments by one on every rising edge of the clock.

## Inputs

| Signal  | Width | Description                  |
| ------- | ----: | ---------------------------- |
| `clk`   |     1 | Clock input                  |
| `rst_n` |     1 | Active-low synchronous reset |

## Output

| Signal    | Width | Description   |
| --------- | ----: | ------------- |
| `counter` |     4 | Counter state |

## Operation

On every rising edge of `clk`:

* When `rst_n = 0`, the counter resets to `0000`.
* When `rst_n = 1`, the counter increments by `1`.
* Since the counter is 4 bits wide, it wraps from `1111` (15) back to `0000`.

The counting sequence is:

```text id="q8f3mc"
0000 → 0001 → 0010 → 0011 → ... → 1110 → 1111 → 0000
  0      1      2      3            14     15      0
```

## RTL

```verilog id="w5k9rd"
always @(posedge clk) begin
    if (!rst_n)
        counter <= 4'b0000;
    else
        counter <= counter + 1'b1;
end
```

## Simulation

The testbench:

* Generates a clock with a 10-time-unit period.
* Holds reset low for one clock cycle.
* Releases reset after 10 time units.
* Runs for 170 additional time units to observe the counter and its overflow.
* Displays the counter value using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="e7m2kp"
rtl/up_counter.v
tb/up_counter_tb.v
makefile
up_counter.png
up_counter0.png
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
