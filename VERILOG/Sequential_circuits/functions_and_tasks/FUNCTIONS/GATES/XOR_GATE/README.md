# XOR Gate Using Function

A 2-input XOR gate implemented using a reusable `mux_2x1` Verilog function.

## Logic

The function is used as:

```verilog
assign Y = mux_2x1(B, ~B, A);
```

This gives:

```text
A = 0 → Y = B
A = 1 → Y = ~B
```

Therefore:

```text
Y = A ^ B
```

The output is `1` when the two inputs are different.

## Truth Table

| A | B | Y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

## Function

```verilog
function mux_2x1;
    input a, b, s;
    begin
        mux_2x1 = (~s & a) | (s & b);
    end
endfunction
```

The reusable function provides 2×1 MUX behavior and is used to construct the XOR operation.

## Simulation

The testbench applies all four possible input combinations and monitors the output.

```text
A=0 B=0 Y=0
A=0 B=1 Y=1
A=1 B=0 Y=1
A=1 B=1 Y=0
```

## Files

```text
rtl/xor_gate.v
tb/tb.v
makefile
xor_gate.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
