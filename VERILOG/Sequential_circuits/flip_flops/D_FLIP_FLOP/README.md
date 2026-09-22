# D Flip-Flop

A D flip-flop that captures the input `d` on the rising edge of `clk`, with an active-low synchronous reset and complementary output.

## Inputs

| Signal  | Width | Description                  |
| ------- | ----: | ---------------------------- |
| `d`     |     1 | Data input                   |
| `clk`   |     1 | Clock input                  |
| `rst_n` |     1 | Active-low synchronous reset |

## Outputs

| Signal  | Width | Description       |
| ------- | ----: | ----------------- |
| `q`     |     1 | Stored output     |
| `q_bar` |     1 | Complement of `q` |

## Operation

On every rising edge of `clk`:

* When `rst_n = 0`, `q` is reset to `0`.
* When `rst_n = 1`, `q` captures the value of `d`.
* `q_bar` is always the inverse of `q`.

```text id="f8x2kd"
q     = d
q_bar = ~q
```

### Truth Table

| `rst_n` | `d` | `q (next)` |
| ------: | --: | ---------: |
|       0 |   X |          0 |
|       1 |   0 |          0 |
|       1 |   1 |          1 |

The inputs are sampled only on the **rising edge of the clock**.

## RTL

```verilog id="j5m7rq"
always @(posedge clk) begin
    if (!rst_n)
        q <= 1'b0;
    else
        q <= d;
end

assign q_bar = ~q;
```

## Simulation

The testbench:

* Generates a clock with a 10-time-unit period.
* Initially applies reset.
* Loads `1`, `0`, and `1` into the flip-flop on successive clock cycles.
* Applies reset again to verify reset operation.
* Releases reset and continues operation.
* Displays `q` and `q_bar` using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="t3w9pn"
rtl/d_flip_flop.v
tb/d_flip_flop_tb.v
makefile
d_ff.png
d_ff0.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
