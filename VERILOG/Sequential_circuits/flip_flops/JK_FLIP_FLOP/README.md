# JK Flip-Flop

A JK flip-flop that supports hold, set, reset, and toggle operations on the rising edge of the clock.

## Inputs

| Signal  | Width | Description                  |
| ------- | ----: | ---------------------------- |
| `j`     |     1 | J input                      |
| `k`     |     1 | K input                      |
| `clk`   |     1 | Clock input                  |
| `rst_n` |     1 | Active-low synchronous reset |

## Outputs

| Signal  | Width | Description       |
| ------- | ----: | ----------------- |
| `q`     |     1 | Stored output     |
| `q_bar` |     1 | Complement of `q` |

## Operation

On every rising edge of `clk`:

* When `rst_n = 0`, `q` resets to `0`.
* When `J = 0, K = 0`, the flip-flop holds its current state.
* When `J = 0, K = 1`, `q` is reset to `0`.
* When `J = 1, K = 0`, `q` is set to `1`.
* When `J = 1, K = 1`, `q` toggles.

### Truth Table

| `rst_n` | `J` | `K` | `q (next)` | Operation |
| ------: | --: | --: | ---------: | --------- |
|       0 |   X |   X |          0 | Reset     |
|       1 |   0 |   0 |        `q` | Hold      |
|       1 |   0 |   1 |          0 | Reset     |
|       1 |   1 |   0 |          1 | Set       |
|       1 |   1 |   1 |       `~q` | Toggle    |

The inputs are evaluated only on the **rising edge of the clock**.

## RTL

```verilog
always @(posedge clk) begin
    if (!rst_n)
        q <= 1'b0;
    else begin
        case ({j, k})
            2'b00 : q <= q;
            2'b01 : q <= 1'b0;
            2'b10 : q <= 1'b1;
            2'b11 : q <= ~q;
            default : q <= 1'bx;
        endcase
    end
end

assign q_bar = ~q;
```

## Simulation

The testbench verifies:

* Reset operation
* Hold operation
* Set operation
* Reset through `J=0, K=1`
* Toggle operation using `J=1, K=1`
* Multiple consecutive toggles
* Complementary output `q_bar`

The testbench also generates an FSDB waveform dump for waveform analysis.

## Files

```text
rtl/jk_flip_flop.v
tb/jk_flip_flop_tb.v
makefile
jk_ff.png
jk_ff0.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
