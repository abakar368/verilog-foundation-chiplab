# Half Subtractor Using Function

A half subtractor implemented using a Verilog function that models a **2-to-1 multiplexer**. The function is reused to generate the `Difference` and `Borrow` outputs.

## Inputs

| Signal | Description      |
| ------ | ---------------- |
| `A`    | Minuend input    |
| `B`    | Subtrahend input |

## Outputs

| Signal       | Description       |
| ------------ | ----------------- |
| `Difference` | Difference output |
| `Borrow`     | Borrow output     |

## Function

The design defines a reusable `mux_2x1` function:

```verilog id="uv5k0h"
function mux_2x1;
    input a, b, s;

    begin
        mux_2x1 = (~s & a) | (s & b);
    end
endfunction
```

The function selects between two inputs according to the select signal:

```text id="j6w0k3"
s = 0 → output = a
s = 1 → output = b
```

The function is called twice:

```verilog id="9f4p3m"
assign Difference = mux_2x1(B, ~B, A);
assign Borrow     = mux_2x1(B, 1'b0, A);
```

These produce the standard half-subtractor equations:

```text id="6n4m8r"
Difference = A ^ B
Borrow     = ~A & B
```

## Truth Table

| A | B | Difference | Borrow |
| - | - | ---------- | ------ |
| 0 | 0 | 0          | 0      |
| 0 | 1 | 1          | 1      |
| 1 | 0 | 1          | 0      |
| 1 | 1 | 0          | 0      |

## Simulation

The testbench:

* Tests all four possible input combinations.
* Displays `A`, `B`, `Difference`, and `Borrow` using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="m6k2w9"
rtl/half_subtractor.v
tb/half_subtractor_tb.v
makefile
hs.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
