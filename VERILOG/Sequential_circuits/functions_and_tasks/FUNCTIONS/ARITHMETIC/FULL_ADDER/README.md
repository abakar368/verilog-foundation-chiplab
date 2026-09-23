# Full Adder Using Function

A full adder implemented using a Verilog function that models a **2-to-1 multiplexer**. The same function is reused to generate the `SUM` and `CARRY` outputs.

## Inputs

| Signal | Description      |
| ------ | ---------------- |
| `A`    | First input bit  |
| `B`    | Second input bit |
| `Cin`  | Carry input      |

## Outputs

| Signal  | Description  |
| ------- | ------------ |
| `SUM`   | Sum output   |
| `CARRY` | Carry output |

## Function

The design defines a `mux_2x1` function:

```verilog
function mux_2x1;
input a, b, s;

begin
    mux_2x1 = (~s & a) | (s & b);
end
endfunction
```

The function behaves as a 2-to-1 multiplexer:

```text
s = 0 → output = a
s = 1 → output = b
```

The function is called twice:

```text
mux_2x1 → SUM
mux_2x1 → CARRY
```

### SUM Logic

```text
SUM = A ? ~(B ^ Cin) : (B ^ Cin)
```

### CARRY Logic

```text
CARRY = A ? (B | Cin) : (B & Cin)
```

These produce the standard full-adder outputs.

## Truth Table

| A | B | Cin | SUM | CARRY |
| - | - | --- | --- | ----- |
| 0 | 0 | 0   | 0   | 0     |
| 0 | 0 | 1   | 1   | 0     |
| 0 | 1 | 0   | 1   | 0     |
| 0 | 1 | 1   | 0   | 1     |
| 1 | 0 | 0   | 1   | 0     |
| 1 | 0 | 1   | 0   | 1     |
| 1 | 1 | 0   | 0   | 1     |
| 1 | 1 | 1   | 1   | 1     |

## Simulation

The testbench:

* Tests all eight possible input combinations.
* Displays `A`, `B`, `Cin`, `SUM`, and `CARRY` using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text
rtl/full_adder.v
tb/full_adder_tb.v
makefile
fa_ha.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
