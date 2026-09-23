# 4×1 MUX Using Task

A 4×1 multiplexer implemented by combining reusable Verilog `task` calls.

## Logic

The `mux_task` implements a basic 2×1 MUX:

```verilog id="a8v1hs"
task mux_task;
    input a;
    input b;
    input s;
    output y;
    begin
        y = s ? b : a;
    end
endtask
```

Three task calls are used to construct the 4×1 MUX:

```text id="n5zj8w"
in[0] ─┐
       ├─ mux_task ── w0 ─┐
in[1] ─┘                  │
                          ├─ mux_task ── out
in[2] ─┐                  │
       ├─ mux_task ── w1 ─┘
in[3] ─┘
```

* `sel[0]` selects between `in[0]/in[1]` and `in[2]/in[3]`.
* `sel[1]` selects between the intermediate outputs `w0` and `w1`.

## Selection Table

| sel[1:0] | Selected Input | out   |
| -------- | -------------- | ----- |
| 00       | in[0]          | in[0] |
| 01       | in[1]          | in[1] |
| 10       | in[2]          | in[2] |
| 11       | in[3]          | in[3] |

## Task

The same `mux_task` is reused three times:

```verilog id="a1w9sp"
mux_task(in[0], in[1], sel[0], w0);
mux_task(in[2], in[3], sel[0], w1);
mux_task(w0, w1, sel[1], out);
```

This demonstrates how tasks can be used to build larger combinational circuits from reusable logic.

## Simulation

The testbench applies different input patterns and select combinations and displays the resulting output.

Expected selection behavior:

```text id="r4j6fd"
sel = 00 → out = in[0]
sel = 01 → out = in[1]
sel = 10 → out = in[2]
sel = 11 → out = in[3]
```

An FSDB waveform is also generated for simulation analysis.

## Files

```text id="p5l7xq"
rtl/mux_4x1.v
tb/tb.v
makefile
mux_4x1_task.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
