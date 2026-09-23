# 4-to-2 Encoder Using Function

A 4-to-2 encoder implemented using a reusable Verilog function that models a **2-to-1 multiplexer**. The function is used to generate the two encoded output bits.

## Inputs

| Signal    | Description         |
| --------- | ------------------- |
| `in[3:0]` | 4-bit one-hot input |

## Outputs

| Signal     | Description          |
| ---------- | -------------------- |
| `out[1:0]` | 2-bit encoded output |

## Function

The design defines a reusable `mux_2x1` function:

```verilog id="7y5q1n"
function mux_2x1;
    input a, b, s;

    begin
        mux_2x1 = s ? b : a;
    end
endfunction
```

The function is used to implement the encoder equations:

```text id="m3k8p2"
out[0] = in[1] | in[3]
out[1] = in[2] | in[3]
```

The MUX function provides the equivalent OR operation by selecting between the input signal and logic `1`.

## Truth Table

For a standard one-hot 4-to-2 encoder:

| in[3] | in[2] | in[1] | in[0] | out[1] | out[0] |
| ----- | ----- | ----- | ----- | ------ | ------ |
| 0     | 0     | 0     | 1     | 0      | 0      |
| 0     | 0     | 1     | 0     | 0      | 1      |
| 0     | 1     | 0     | 0     | 1      | 0      |
| 1     | 0     | 0     | 0     | 1      | 1      |

Only one input should be active at a time.

## Simulation

The testbench:

* Tests all four valid one-hot input combinations.
* Displays `in` and `out` using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="k6v3p9"
rtl/encoder_4to2.v
tb/tb.v
makefile
encoder_4x2.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
