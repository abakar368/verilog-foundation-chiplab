# XNOR Gate Using Function

A 2-input XNOR gate implemented using a reusable `mux_2x1` Verilog function.

## Logic

The function is used as:

```verilog
assign Y = mux_2x1(~B, B, A);
```

This gives:

```text
A = 0 → Y = ~B
A = 1 → Y = B
```

Therefore:

```text
Y = ~(A ^ B)
```

The output is `1` when both inputs are equal.

## Truth Table

| A | B | Y |
| - | - | - |
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## Function

```verilog
function mux_2x1;
    input a, b, s;
    begin
        mux_2x1 = (~s & a) | (s & b);
    end
endfunction
```

The reusable function provides 2×1 MUX behavior and is used to construct the XNOR operation.

## Simulation

The testbench applies all four possible input combinations and monitors the output.

```text
A=0 B=0 Y=1
A=0 B=1 Y=0
A=1 B=0 Y=0
A=1 B=1 Y=1
```

## Files

```text
rtl/xnor_gate.v
tb/tb.v
makefile
xnor_gate.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
