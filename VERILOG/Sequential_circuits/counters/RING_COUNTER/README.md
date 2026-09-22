# 4-Bit Ring Counter

A 4-bit synchronous ring counter that circulates a single `1` through the counter bits.

## Inputs

| Signal  | Width | Description                  |
| ------- | ----: | ---------------------------- |
| `clk`   |     1 | Clock input                  |
| `rst_n` |     1 | Active-low synchronous reset |

## Output

| Signal    | Width | Description        |
| --------- | ----: | ------------------ |
| `counter` |     4 | Ring counter state |

## Operation

On every rising edge of `clk`:

* When `rst_n = 0`, the counter initializes to `1000`.
* When `rst_n = 1`, the bits rotate right.
* The LSB (`counter[0]`) is fed back into the MSB.

```verilog id="u3v9kq"
counter <= {counter[0], counter[3:1]};
```

Starting from `1000`, the counter produces:

```text id="p8k2sd"
1000 → 0100 → 0010 → 0001 → 1000 → ...
```

Only **4 states** are used because there is one circulating `1`.

## RTL

```verilog id="m7c4wx"
always @(posedge clk) begin
    if (!rst_n)
        counter <= 4'b1000;
    else
        counter <= {counter[0], counter[3:1]};
end
```

## Simulation

The testbench:

* Generates a clock with a 10-time-unit period.
* Initially holds reset low.
* Releases reset after 10 time units.
* Runs for 80 additional time units to observe several rotations.
* Displays the counter state using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="r2n6vj"
rtl/ring_counter.v
tb/ring_counter_tb.v
makefile
ring_counter.png
ring_counter0.png
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
