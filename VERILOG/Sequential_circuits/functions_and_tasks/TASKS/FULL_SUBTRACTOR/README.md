# Full Subtractor Using Task

A 1-bit full subtractor implemented using a reusable Verilog `task`.

## Logic

The task calculates both the difference and borrow:

```verilog id="x8m2kc"
task full_subtractor;
    input a;
    input b;
    input bin;
    output diff;
    output borrow;
    begin
        diff   = a ^ b ^ bin;
        borrow = (~a & b) | (~a & bin) | (b & bin);
    end
endtask
```

The task is called inside a combinational `always @(*)` block:

```verilog id="q9w4tp"
always @(*) begin
    full_subtractor(A, B, BIN, DIFF, BORROW);
end
```

### Boolean Equations

```text id="e6p3wy"
DIFF   = A ⊕ B ⊕ BIN
BORROW = A'B + A'BIN + BBIN
```

## Truth Table

| A | B | BIN | DIFF | BORROW |
| - | - | --- | ---- | ------ |
| 0 | 0 | 0   | 0    | 0      |
| 0 | 0 | 1   | 1    | 1      |
| 0 | 1 | 0   | 1    | 1      |
| 0 | 1 | 1   | 0    | 1      |
| 1 | 0 | 0   | 1    | 0      |
| 1 | 0 | 1   | 0    | 0      |
| 1 | 1 | 0   | 0    | 0      |
| 1 | 1 | 1   | 1    | 1      |

## Task

The `full_subtractor` task accepts three inputs and returns two outputs: `diff` and `borrow`.

This demonstrates how a Verilog task can encapsulate combinational arithmetic logic and return **multiple output values**.

## Simulation

The testbench should apply all eight combinations of `A`, `B`, and `BIN` and verify `DIFF` and `BORROW`.

An FSDB waveform can be generated for simulation analysis.

## Files

```text id="n7c4vp"
rtl/full_subtractor.v
tb/tb.v
makefile
fs_task.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
