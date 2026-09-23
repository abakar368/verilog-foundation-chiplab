# 1-to-2 Decoder Using Function

A 1-to-2 decoder implemented using a reusable Verilog function that models a **2-to-1 multiplexer**. The input `A` is used as the select signal to activate one of the two outputs.

## Input

| Signal | Description                  |
| ------ | ---------------------------- |
| `A`    | Decoder input and MUX select |

## Outputs

| Signal | Description                  |
| ------ | ---------------------------- |
| `Y0`   | Output selected when `A = 0` |
| `Y1`   | Output selected when `A = 1` |

## Function

The design defines a reusable `mux_2x1` function:

```verilog id="x4d7q2"
function mux_2x1;
    input a, b, s;

    begin
        mux_2x1 = (~s & a) | (s & b);
    end
endfunction
```

The function is called twice:

```verilog id="2x1c7m"
assign Y0 = mux_2x1(1'b1, 1'b0, A);
assign Y1 = mux_2x1(1'b0, 1'b1, A);
```

The input `A` acts as the select signal:

```text id="6r5n0v"
A = 0 → Y0 = 1, Y1 = 0
A = 1 → Y0 = 0, Y1 = 1
```

## Truth Table

| A | Y0 | Y1 |
| - | -- | -- |
| 0 | 1  | 0  |
| 1 | 0  | 1  |

## Simulation

The testbench:

* Tests both possible values of `A`.
* Displays `A`, `Y0`, and `Y1` using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="p3k8v1"
rtl/decoder_1to2_mux.v
tb/tb.v
makefile
decoder_1x2.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
