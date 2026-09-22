# T Flip-Flop

A T (toggle) flip-flop that holds or toggles its state based on the `T` input, with an active-low synchronous reset.

## Inputs

| Signal  | Width | Description                  |
| ------- | ----: | ---------------------------- |
| `t`     |     1 | Toggle control input         |
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
* When `T = 0`, `q` holds its current state.
* When `T = 1`, `q` toggles to its complement.
* `q_bar` is always the inverse of `q`.

### Truth Table

| `rst_n` | `T` | `q (next)` | Operation |
| ------: | --: | ---------: | --------- |
|       0 |   X |          0 | Reset     |
|       1 |   0 |        `q` | Hold      |
|       1 |   1 |       `~q` | Toggle    |

The inputs are evaluated on the **rising edge of the clock**.

## RTL

```verilog id="z6r3mw"
always @(posedge clk) begin
    if (!rst_n)
        q <= 1'b0;
    else
        q <= (t ? ~q : q);
end

assign q_bar = ~q;
```

## Simulation

The testbench verifies:

* Synchronous reset
* Hold operation with `T=0`
* Multiple consecutive toggles with `T=1`
* Returning to hold mode
* Additional toggle cycles
* Reset operation
* Complementary output `q_bar`

The testbench also generates an FSDB waveform dump for waveform analysis.

## Files

```text id="p4x8kn"
rtl/t_flip_flop.v
tb/t_flip_flop_tb.v
makefile
t_ff1.png
t_ff2.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
