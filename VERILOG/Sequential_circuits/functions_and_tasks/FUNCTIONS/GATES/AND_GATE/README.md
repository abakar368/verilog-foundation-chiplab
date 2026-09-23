# AND Gate Using Function

An AND gate implemented using a reusable Verilog function that models a **2-to-1 multiplexer**.

## Inputs

| Signal | Description  |
| ------ | ------------ |
| `A`    | First input  |
| `B`    | Second input |

## Output

| Signal | Description     |
| ------ | --------------- |
| `Y`    | AND gate output |

## Function

The design defines a reusable `mux_2x1` function:

```verilog id="y7k3p1"
function mux_2x1;
    input a, b, s;

    begin
        mux_2x1 = (~s & a) | (s & b);
    end
endfunction
```

The function is called as:

```verilog id="8m2r4v"
assign Y = mux_2x1(1'b0, B, A);
```

When `A = 0`, the MUX selects `0`. When `A = 1`, it selects `B`.

Therefore:

```text id="3v8n5q"
Y = A & B
```

## Truth Table

| A | B | Y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## Simulation

The testbench:

* Tests all four possible input combinations.
* Displays `A`, `B`, and `Y` using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="r5c2x8"
rtl/and_gate.v
tb/tb.v
makefile
and_gate.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
