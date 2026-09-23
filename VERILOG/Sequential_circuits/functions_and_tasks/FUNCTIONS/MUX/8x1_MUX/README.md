# 8×1 Multiplexer Using Function

An 8×1 multiplexer implemented by combining reusable `mux_2x1` Verilog function calls.

## Logic

The `mux_2x1` function provides the basic selection operation:

```verilog id="r7q8yw"
function mux_2x1;
    input a, b, s;
    begin
        mux_2x1 = s ? b : a;
    end
endfunction
```

The 8×1 MUX is constructed using **seven 2×1 MUX operations**:

```text id="e9f6r4"
Level 1:  in[0] ─┐      in[2] ─┐      in[4] ─┐      in[6] ─┐
                 MUX             MUX             MUX             MUX
         in[1] ─┘      in[3] ─┘      in[5] ─┘      in[7] ─┘
                   │              │              │              │
                   └────── sel[0] ┴────── sel[0] ┴────── sel[0]

Level 2:       ───── MUX ─────          ───── MUX ─────
                     │                       │
                   sel[1]                  sel[1]

Level 3:              └──────── MUX ─────────┘
                              sel[2]
                                │
                               out
```

The select lines determine which input reaches the output:

| sel[2:0] | Selected Input |
| -------- | -------------- |
| 000      | in[0]          |
| 001      | in[1]          |
| 010      | in[2]          |
| 011      | in[3]          |
| 100      | in[4]          |
| 101      | in[5]          |
| 110      | in[6]          |
| 111      | in[7]          |

## Function

```verilog id="0a5xq6"
function mux_2x1;
    input a, b, s;
    begin
        mux_2x1 = s ? b : a;
    end
endfunction
```

The function is reused seven times to construct the 8×1 MUX.

## Simulation

The testbench verifies all eight select combinations using one-hot input patterns.

Expected behavior:

```text id="z1m5m3"
sel=000 → out=in[0]
sel=001 → out=in[1]
sel=010 → out=in[2]
sel=011 → out=in[3]
sel=100 → out=in[4]
sel=101 → out=in[5]
sel=110 → out=in[6]
sel=111 → out=in[7]
```

The testbench also generates an FSDB waveform for simulation analysis.

## Files

```text id="g2a8hf"
rtl/8x1_mux.v
tb/tb.v
makefile
mux_8x1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
