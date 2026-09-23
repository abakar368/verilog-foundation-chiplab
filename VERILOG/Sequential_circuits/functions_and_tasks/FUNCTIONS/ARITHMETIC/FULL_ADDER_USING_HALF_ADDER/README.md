# Full Adder Using Half Adder Function

A full adder implemented using a Verilog function that models the behavior of a **half adder**. The function returns both the half-adder sum and carry as a 2-bit value.

## Inputs

| Signal | Description      |
| ------ | ---------------- |
| `a`    | First input bit  |
| `b`    | Second input bit |
| `cin`  | Carry input      |

## Outputs

| Signal | Description      |
| ------ | ---------------- |
| `sum`  | Full-adder sum   |
| `cout` | Full-adder carry |

## Function

The `half_adder` function returns two outputs:

```verilog
function [1:0] half_adder;
    input x, y;

    begin
        half_adder[0] = x ^ y;
        half_adder[1] = x & y;
    end
endfunction
```

The returned value is:

```text id="ksj13k"
half_adder[0] → Sum
half_adder[1] → Carry
```

The function is called with `a` and `b`:

```verilog
assign ha = half_adder(a, b);
```

The resulting `ha` bus is then used to calculate the full-adder outputs:

```text id="4tly5k"
       a ─────┐
              │
       b ─────┤→ half_adder function
              │
              └──→ ha[0] = partial sum
                   ha[1] = partial carry

       ha[0] ──┐
       cin ────┤→ SUM

       ha[1] ──┐
       ha[0] ──┤→ COUT
       cin ────┘
```

## Truth Table

| a | b | cin | sum | cout |
| - | - | --- | --- | ---- |
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

## Simulation

The testbench:

* Tests all eight possible combinations of `a`, `b`, and `cin`.
* Displays the inputs and outputs using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="5h8p5b"
rtl/full_adder_ha.v
tb/full_adder_ha_tb.v
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
