# NAND Gate Using Function

A NAND gate implemented using a reusable Verilog function that models a **2-to-1 multiplexer**.

## Inputs

| Signal | Description  |
| ------ | ------------ |
| `A`    | First input  |
| `B`    | Second input |

## Output

| Signal | Description      |
| ------ | ---------------- |
| `Y`    | NAND gate output |

## Function

The design defines a reusable `mux_2x1` function:

```verilog id="p4x7m2"
function mux_2x1;
    input a, b, s;

    begin
        mux_2x1 = (~s & a) | (s & b);
    end
endfunction
```

The function is called as:

```verilog id="j8r3k5"
assign Y = mux_2x1(1'b1, ~B, A);
```

When `A = 0`, the MUX selects `1`. When `A = 1`, it selects `~B`.

Therefore:

```text id="q2m6v9"
Y = ~(A & B)
```

## Truth Table

| A | B | Y |
| - | - | - |
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

## Simulation

The testbench:

* Tests all four possible input combinations.
* Displays `A`, `B`, and `Y` using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="k7p3x5"
rtl/nand_gate.v
tb/tb.v
makefile
nand_gate.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
