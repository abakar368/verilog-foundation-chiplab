# NOR Gate Using Function

A NOR gate implemented using a reusable Verilog function that models a **2-to-1 multiplexer**.

## Inputs

| Signal | Description  |
| ------ | ------------ |
| `A`    | First input  |
| `B`    | Second input |

## Output

| Signal | Description     |
| ------ | --------------- |
| `Y`    | NOR gate output |

## Function

The design defines a reusable `mux_2x1` function:

```verilog id="k8m3p6"
function mux_2x1;
    input a, b, s;

    begin
        mux_2x1 = (~s & a) | (s & b);
    end
endfunction
```

The function is called as:

```verilog id="r5v2n9"
assign Y = mux_2x1(1'b0, ~B, A);
```

When `A = 0`, the MUX selects `0`. When `A = 1`, it selects `~B`.

Therefore:

```text id="q6p4x1"
Y = ~(A | B)
```

## Truth Table

| A | B | Y |
| - | - | - |
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

## Simulation

The testbench:

* Tests all four possible input combinations.
* Displays `A`, `B`, and `Y` using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="m7c3v8"
rtl/nor_gate.v
tb/tb.v
makefile
nor_gate.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
