# Half Adder Using Function

A half adder implemented using a Verilog function that models a **2-to-1 multiplexer**. The function is reused to generate the `SUM` and `CARRY` outputs.

## Inputs

| Signal | Description      |
| ------ | ---------------- |
| `A`    | First input bit  |
| `B`    | Second input bit |

## Outputs

| Signal  | Description  |
| ------- | ------------ |
| `SUM`   | Sum output   |
| `CARRY` | Carry output |

## Function

The design defines a reusable `mux_2x1` function:

```verilog id="n8k8fg"
function mux_2x1;
    input a, b, s;

    begin
        mux_2x1 = (~s & a) | (s & b);
    end
endfunction
```

The function selects between two inputs according to `s`:

```text id="4h9kq1"
s = 0 → output = a
s = 1 → output = b
```

The function is called twice:

```verilog id="3d3f8x"
assign SUM   = mux_2x1(B, ~B, A);
assign CARRY = mux_2x1(1'b0, B, A);
```

This produces the standard half-adder equations:

```text id="q0b6n5"
SUM   = A ^ B
CARRY = A & B
```

## Truth Table

| A | B | SUM | CARRY |
| - | - | --- | ----- |
| 0 | 0 | 0   | 0     |
| 0 | 1 | 1   | 0     |
| 1 | 0 | 1   | 0     |
| 1 | 1 | 0   | 1     |

## Simulation

The testbench:

* Tests all four possible input combinations.
* Displays `A`, `B`, `SUM`, and `CARRY` using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="j2d9ps"
rtl/half_adder.v
tb/half_adder_tb.v
makefile
ha.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
