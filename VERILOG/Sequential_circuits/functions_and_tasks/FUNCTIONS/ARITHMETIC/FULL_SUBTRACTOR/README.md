# Full Subtractor Using Function

A full subtractor implemented using a Verilog function that models a **2-to-1 multiplexer**. The function is reused to generate the `Difference` and `Borrow` outputs.

## Inputs

| Signal | Description      |
| ------ | ---------------- |
| `A`    | Minuend input    |
| `B`    | Subtrahend input |
| `Bin`  | Borrow input     |

## Outputs

| Signal       | Description       |
| ------------ | ----------------- |
| `Difference` | Difference output |
| `Borrow`     | Borrow output     |

## Function

The design defines a reusable `mux_2x1` function:

```verilog
function mux_2x1;
    input a, b, s;

    begin
        mux_2x1 = (~s & a) | (s & b);
    end
endfunction
```

The function behaves as a 2-to-1 multiplexer:

```text id="h5k4q0"
s = 0 → output = a
s = 1 → output = b
```

The function is called twice to implement the full subtractor.

### Difference

```text id="h4c3u8"
Difference = A ? ~(B ^ Bin) : (B ^ Bin)
```

### Borrow

```text id="4m1y9u"
Borrow = A ? (B & Bin) : (B | Bin)
```

## Truth Table

| A | B | Bin | Difference | Borrow |
| - | - | --- | ---------- | ------ |
| 0 | 0 | 0   | 0          | 0      |
| 0 | 0 | 1   | 1          | 1      |
| 0 | 1 | 0   | 1          | 1      |
| 0 | 1 | 1   | 0          | 1      |
| 1 | 0 | 0   | 1          | 0      |
| 1 | 0 | 1   | 0          | 0      |
| 1 | 1 | 0   | 0          | 0      |
| 1 | 1 | 1   | 1          | 1      |

## Simulation

The testbench:

* Tests all eight possible combinations of `A`, `B`, and `Bin`.
* Displays the inputs and outputs using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="1q5z3f"
rtl/full_subtractor.v
tb/full_subtractor_tb.v
makefile
fs.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
