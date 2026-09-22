# SR Flip-Flop

An SR flip-flop that supports hold, set, and reset operations, with an invalid state when both `S` and `R` are asserted simultaneously.

## Inputs

| Signal  | Width | Description                  |
| ------- | ----: | ---------------------------- |
| `s`     |     1 | Set input                    |
| `r`     |     1 | Reset input                  |
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
* When `S = 0, R = 0`, the flip-flop holds its current state.
* When `S = 0, R = 1`, `q` is reset to `0`.
* When `S = 1, R = 0`, `q` is set to `1`.
* When `S = 1, R = 1`, the state is invalid and `q` is assigned `X`.

### Truth Table

| `rst_n` | `S` | `R` | `q (next)` | Operation |
| ------: | --: | --: | ---------: | --------- |
|       0 |   X |   X |          0 | Reset     |
|       1 |   0 |   0 |        `q` | Hold      |
|       1 |   0 |   1 |          0 | Reset     |
|       1 |   1 |   0 |          1 | Set       |
|       1 |   1 |   1 |          X | Invalid   |

The inputs are evaluated on the **rising edge of the clock**.

## RTL

```verilog id="k8m2fz"
always @(posedge clk) begin
    if (!rst_n)
        q <= 1'b0;
    else begin
        case ({s, r})
            2'b00 : q <= q;
            2'b01 : q <= 1'b0;
            2'b10 : q <= 1'b1;
            2'b11 : q <= 1'bx;
            default : q <= 1'bx;
        endcase
    end
end

assign q_bar = ~q;
```

## Simulation

The testbench verifies:

* Synchronous reset
* Hold operation
* Set operation
* Reset operation
* Invalid `S=1, R=1` condition
* Complementary output `q_bar`

The testbench also generates an FSDB waveform dump for waveform analysis.

## Files

```text id="q4v7nc"
rtl/sr_flip_flop.v
tb/sr_flip_flop_tb.v
makefile
sr_ff1.png
sr_ff2.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
