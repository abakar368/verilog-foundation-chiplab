# Buffer Using Function

A buffer implemented using a reusable Verilog function that models a **2-to-1 multiplexer**.

## Input

| Signal | Description  |
| ------ | ------------ |
| `A`    | Input signal |

## Output

| Signal | Description     |
| ------ | --------------- |
| `Y`    | Buffered output |

## Function

The design defines a reusable `mux_2x1` function:

```verilog id="c7v2m4"
function mux_2x1;
    input a, b, s;

    begin
        mux_2x1 = (~s & a) | (s & b);
    end
endfunction
```

The function is called as:

```verilog id="x3n8q1"
assign Y = mux_2x1(1'b0, 1'b1, A);
```

When `A = 0`, the MUX selects `0`. When `A = 1`, it selects `1`.

Therefore:

```text id="m9k4p6"
Y = A
```

## Truth Table

| A | Y |
| - | - |
| 0 | 0 |
| 1 | 1 |

## Simulation

The testbench:

* Tests both possible values of `A`.
* Displays `A` and `Y` using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="v6r2k8"
rtl/buffer.v
tb/tb.v
makefile
buffer.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
