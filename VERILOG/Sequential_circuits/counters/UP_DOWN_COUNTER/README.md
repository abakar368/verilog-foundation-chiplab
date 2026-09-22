# 4-Bit Up/Down Counter

A 4-bit synchronous counter that can increment or decrement based on the `up_down` control input.

## Inputs

| Signal    | Width | Description                  |
| --------- | ----: | ---------------------------- |
| `clk`     |     1 | Clock input                  |
| `rst_n`   |     1 | Active-low synchronous reset |
| `up_down` |     1 | Count direction control      |

## Output

| Signal    | Width | Description   |
| --------- | ----: | ------------- |
| `counter` |     4 | Counter state |

## Operation

On every rising edge of `clk`:

* When `rst_n = 0`, the counter resets to `0000`.
* When `rst_n = 1` and `up_down = 1`, the counter increments.
* When `rst_n = 1` and `up_down = 0`, the counter decrements.

```text id="n7k4sp"
up_down = 1  →  Count Up
up_down = 0  →  Count Down
```

Since the counter is 4 bits wide, arithmetic wraps around at the boundaries.

### Count Up

```text id="v3d8qa"
0000 → 0001 → 0010 → ... → 1110 → 1111 → 0000
```

### Count Down

```text id="r6m2xy"
1111 → 1110 → 1101 → ... → 0001 → 0000 → 1111
```

## RTL

```verilog id="b9w5ct"
always @(posedge clk) begin
    if (!rst_n)
        counter <= 4'd0;
    else if (up_down)
        counter <= counter + 4'd1;
    else
        counter <= counter - 4'd1;
end
```

## Simulation

The testbench:

* Generates a clock with a 10-time-unit period.
* Initially applies synchronous reset with `up_down = 1`.
* Counts up for 80 time units.
* Changes `up_down` to `0` and counts down for 80 time units.
* Changes `up_down` back to `1` and counts up for 40 time units.
* Displays the counter state using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="c5j8mv"
rtl/up_down_counter.v
tb/up_down_counter_tb.v
makefile
up_down_counter.png
up_down_counter0.png
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
