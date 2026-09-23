# 1-Bit Comparator Using Function

A 1-bit comparator implemented using a reusable Verilog function that models a **2-to-1 multiplexer**. The function is called three times to determine whether `A` is greater than, equal to, or less than `B`.

## Inputs

| Signal | Description      |
| ------ | ---------------- |
| `A`    | First input bit  |
| `B`    | Second input bit |

## Outputs

| Signal    | Description       |
| --------- | ----------------- |
| `Greater` | High when `A > B` |
| `Equal`   | High when `A = B` |
| `Less`    | High when `A < B` |

## Function

The design defines a reusable `mux_2x1` function:

```verilog
function mux_2x1;
    input a, b, s;

    begin
        mux_2x1 = (~s & a) | (s & b);
    end
endfunction
```

The function is used to generate the three comparison outputs.

```text id="3y1b4u"
A > B → Greater = 1
A = B → Equal   = 1
A < B → Less    = 1
```

Only one of the three outputs is high for each valid input combination.

## Truth Table

| A | B | Greater | Equal | Less |
| - | - | ------- | ----- | ---- |
| 0 | 0 | 0       | 1     | 0    |
| 0 | 1 | 0       | 0     | 1    |
| 1 | 0 | 1       | 0     | 0    |
| 1 | 1 | 0       | 1     | 0    |

## Simulation

The testbench:

* Tests all four possible input combinations.
* Displays `A`, `B`, `Greater`, `Equal`, and `Less` using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="7m3r1p"
rtl/1bit_comparator.v
tb/1bit_comparator_tb.v
makefile
1bit_comparator.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
