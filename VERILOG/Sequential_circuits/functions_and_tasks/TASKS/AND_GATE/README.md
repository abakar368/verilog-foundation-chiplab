# AND Gate Using Task

A 2-input AND gate implemented using a reusable Verilog `task`.

## Logic

The task performs the AND operation:

```verilog id="9x5v4n"
task and_task;
    input a;
    input b;
    output y;
    begin
        y = a & b;
    end
endtask
```

The task is called inside a combinational `always @(*)` block:

```verilog id="g5q9ds"
always @(*) begin
    and_task(A, B, Y);
end
```

Therefore:

```text id="m3f8ka"
Y = A & B
```

## Truth Table

| A | B | Y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## Task

The `and_task` encapsulates the AND operation and uses an output argument to return the result.

This demonstrates **reusable combinational logic using Verilog tasks**.

## Simulation

The testbench applies all four possible input combinations and displays the output.

Expected results:

```text id="q2n6wp"
A=0 B=0 → Y=0
A=0 B=1 → Y=0
A=1 B=0 → Y=0
A=1 B=1 → Y=1
```

An FSDB waveform is also generated for simulation analysis.

## Files

```text id="x4v9nt"
rtl/and_gate.v
tb/tb.v
makefile
and_gate_task.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
