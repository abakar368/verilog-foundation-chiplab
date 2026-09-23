# 4×1 Multiplexer Using Function

A 4×1 multiplexer implemented by combining reusable `mux_2x1` function calls.

## Logic

The `mux_2x1` function provides basic 2×1 MUX behavior:

```verilog
function mux_2x1;
    input a, b, s;
    begin
        mux_2x1 = s ? b : a;
    end
endfunction
```

The 4×1 MUX is constructed in two stages:

```text
in[0] ─┐
       ├─ MUX ─┐
in[1] ─┘      │
              ├─ MUX ── out
in[2] ─┐      │
       ├─ MUX ─┘
in[3] ─┘
```

* `sel[0]` selects between `in[0]/in[1]` and `in[2]/in[3]`.
* `sel[1]` selects between the two intermediate results.

Therefore:

| sel[1:0] | Selected Input | out   |
| -------- | -------------- | ----- |
| 00       | in[0]          | in[0] |
| 01       | in[1]          | in[1] |
| 10       | in[2]          | in[2] |
| 11       | in[3]          | in[3] |

## Function

```verilog
function mux_2x1;
    input a, b, s;
    begin
        mux_2x1 = s ? b : a;
    end
endfunction
```

The same function is reused three times to construct the 4×1 MUX.

## Simulation

The testbench verifies each select combination using one-hot input patterns:

```text
in=0001 | sel=00 | out=1
in=0010 | sel=01 | out=1
in=0100 | sel=10 | out=1
in=1000 | sel=11 | out=1
```

An FSDB waveform is also generated for simulation analysis.

## Files

```text
rtl/4x1_mux.v
tb/tb.v
makefile
mux_4x1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
