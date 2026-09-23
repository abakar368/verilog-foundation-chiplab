# 2×1 MUX Using Task

A 2×1 multiplexer implemented using a reusable Verilog `task`.

## Logic

The task implements the MUX selection:

```verilog id="6x2qnd"
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

The task is called inside a combinational `always @(*)` block:

```verilog id="lq6j2k"
always @(*) begin
    mux_task(A, B, S, Y);
end
```

Operation:

```text id="4qpj7x"
S = 0 → Y = A
S = 1 → Y = B
```

## Truth Table

| S | A | B | Y |
| - | - | - | - |
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 1 |

## Task

The `mux_task` encapsulates the MUX logic and receives the two data inputs and select signal as inputs, returning the selected value through the output argument `y`.

This demonstrates **code reuse with Verilog tasks** for combinational logic.

## Simulation

The testbench applies several MUX input and select combinations and displays the resulting output.

Expected behavior:

```text id="ph0yq5"
S = 0 → Y follows A
S = 1 → Y follows B
```

An FSDB waveform is also generated for simulation analysis.

## Files

```text id="k4j7p2"
rtl/mux_2x1.v
tb/tb.v
makefile
mux_2x1_task.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
