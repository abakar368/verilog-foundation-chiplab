# NOT Gate Using Function

A 1-bit NOT gate implemented using a reusable `mux_2x1` Verilog function.

## Logic

The function acts as a 2×1 multiplexer:

```text
Y = mux_2x1(1'b1, 1'b0, A)
```

Therefore:

```text
A = 0 → Y = 1
A = 1 → Y = 0
```

Equivalent logic:

```text
Y = ~A
```

## Truth Table

| A | Y |
| - | - |
| 0 | 1 |
| 1 | 0 |

## Function

```verilog
function mux_2x1;
    input a, b, s;
    begin
        mux_2x1 = (~s & a) | (s & b);
    end
endfunction
```

The function is reused to implement the NOT operation by selecting between constant `1` and `0`.

## Simulation

The testbench applies both possible input combinations and monitors the output.

```text
A=0 Y=1
A=1 Y=0
```

## Files

```text
rtl/not_gate.v
tb/tb.v
makefile
not_gate.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
