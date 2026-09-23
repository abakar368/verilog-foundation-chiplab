# 2-to-4 Decoder Using Function

A 2-to-4 decoder implemented using a Verilog function that models a **2-to-1 multiplexer**. The two input bits are used as select signals to activate one of four output lines.

## Inputs

| Signal   | Description         |
| -------- | ------------------- |
| `A[1:0]` | 2-bit decoder input |

## Output

| Signal   | Description                  |
| -------- | ---------------------------- |
| `Y[3:0]` | 4-bit one-hot decoded output |

## Function

The design defines a reusable `mux_2x1` function:

```verilog id="q9c2pa"
function mux_2x1;
    input sel;
    input in0;
    input in1;

    begin
        mux_2x1 = sel ? in1 : in0;
    end
endfunction
```

The function is used to generate each decoder output. Each output combines two MUX results corresponding to the required input combination.

```text id="x8m4z2"
A[1:0]
  │
  ├── A[1] → MUX → upper selection
  │
  └── A[0] → MUX → lower selection
                  │
                  ↓
             Y[3:0]
```

## Truth Table

| A[1] | A[0] | Y[3] | Y[2] | Y[1] | Y[0] |
| ---- | ---- | ---- | ---- | ---- | ---- |
| 0    | 0    | 0    | 0    | 0    | 1    |
| 0    | 1    | 0    | 0    | 1    | 0    |
| 1    | 0    | 0    | 1    | 0    | 0    |
| 1    | 1    | 1    | 0    | 0    | 0    |

Only one output is high for each valid input combination.

## Simulation

The testbench:

* Tests all four possible values of `A`.
* Displays `A` and `Y` using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="2x8k5v"
rtl/2_to_4_decoder.v
tb/tb.v
makefile
decoder_2x4.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
