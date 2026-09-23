# Full Adder Using Task

A 1-bit full adder implemented using a reusable Verilog `task`.

## Logic

The task calculates both the sum and carry:

```verilog id="y5a7c2"
task full_adder;
    input a;
    input b;
    input cin;
    output sum;
    output cout;
    begin
        sum  = a ^ b ^ cin;
        cout = (a & b) | (a & cin) | (b & cin);
    end
endtask
```

The task is called inside a combinational `always @(*)` block:

```verilog id="b0h3jm"
always @(*) begin
    full_adder(A, B, CIN, SUM, COUT);
end
```

### Boolean Equations

```text id="4t2x7v"
SUM  = A ⊕ B ⊕ CIN
COUT = AB + ACIN + BCIN
```

## Truth Table

| A | B | CIN | SUM | COUT |
| - | - | --- | --- | ---- |
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

## Task

The `full_adder` task accepts three inputs and returns two outputs.

This demonstrates how a Verilog task can handle **multiple output values** while encapsulating combinational logic.

## Simulation

The testbench applies all eight possible combinations of `A`, `B`, and `CIN` and displays `SUM` and `COUT`.

An FSDB waveform is also generated for simulation analysis.

## Files

```text id="5m8q1d"
rtl/full_adder.v
tb/tb.v
makefile
fa.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
