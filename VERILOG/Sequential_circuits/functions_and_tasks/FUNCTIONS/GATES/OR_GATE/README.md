# OR Gate Using Function

A 2-input OR gate implemented using a reusable `mux_2x1` Verilog function.

## Logic

The function is used as:

```verilog
assign Y = mux_2x1(A, 1'b1, B);
```

This gives:

```text
B = 0 → Y = A
B = 1 → Y = 1
```

Therefore:

```text
Y = A | B
```

## Truth Table

| A | B | Y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
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

The function provides reusable 2×1 MUX behavior and is used here to construct the OR operation.

## Simulation

The testbench applies all four possible input combinations and monitors the output.

```text
A=0 B=0 Y=0
A=0 B=1 Y=1
A=1 B=0 Y=1
A=1 B=1 Y=1
```

## Files

```text
rtl/or_gate.v
tb/tb.v
makefile
or_gate.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
