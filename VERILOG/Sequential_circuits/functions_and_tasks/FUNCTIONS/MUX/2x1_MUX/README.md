# 2×1 Multiplexer

A 2×1 multiplexer that selects one of two inputs using a select signal.

## Logic

The MUX is implemented using the Boolean expression:

```verilog
assign y = (~s & a) | (s & b);
```

Operation:

```text
s = 0 → y = a
s = 1 → y = b
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

## Simulation

The testbench applies all eight possible input combinations and monitors the selected output.

The expected behavior is:

```text
s = 0 → y follows a
s = 1 → y follows b
```

The testbench also generates an FSDB waveform file for viewing simulation activity.

## Files

```text
rtl/mux_2x1.v
tb/mux_2x1_tb.v
makefile
mux_2x1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
