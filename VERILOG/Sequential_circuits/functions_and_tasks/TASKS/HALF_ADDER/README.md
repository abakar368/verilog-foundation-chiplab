# Half Adder Using Task

A 1-bit half adder implemented using a reusable Verilog `task`.

## Logic

The task calculates the sum and carry:

```verilog id="x0v5r7"
task half_adder;
    input a;
    input b;
    output sum;
    output carry;
    begin
        sum   = a ^ b;
        carry = a & b;
    end
endtask
```

The task is called inside a combinational `always @(*)` block:

```verilog id="t2d6kw"
always @(*) begin
    half_adder(A, B, SUM, CARRY);
end
```

### Boolean Equations

```text id="q5y8zc"
SUM   = A ⊕ B
CARRY = A · B
```

## Truth Table

| A | B | SUM | CARRY |
| - | - | --- | ----- |
| 0 | 0 | 0   | 0     |
| 0 | 1 | 1   | 0     |
| 1 | 0 | 1   | 0     |
| 1 | 1 | 0   | 1     |

## Task

The `half_adder` task accepts two inputs and returns two outputs.

This demonstrates how a Verilog task can encapsulate combinational arithmetic logic and return **multiple output values**.

## Simulation

The testbench applies all four possible combinations of `A` and `B` and displays `SUM` and `CARRY`.

An FSDB waveform is also generated for simulation analysis.

## Files

```text id="m8z3kd"
rtl/half_adder.v
tb/tb.v
makefile
ha_task.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
