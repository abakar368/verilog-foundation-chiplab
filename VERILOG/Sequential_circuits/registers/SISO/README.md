# SISO Shift Register

A 4-bit **Serial-In Serial-Out (SISO)** shift register that accepts data serially and shifts it out serially through a single output.

## Inputs

| Signal      | Width | Description                  |
| ----------- | ----: | ---------------------------- |
| `clk`       |     1 | Clock                        |
| `rst_n`     |     1 | Active-low synchronous reset |
| `serial_in` |     1 | Serial data input            |

## Output

| Signal       | Width | Description        |
| ------------ | ----: | ------------------ |
| `serial_out` |     1 | Serial data output |

## Operation

* **Reset (`rst_n = 0`)** → Register clears to `0000`
* On every rising clock edge, `serial_in` enters `q[3]`
* Existing data shifts toward `q[0]`
* The bit at `q[0]` appears on `serial_out`
* Data is transferred through the register one bit at a time

Example:

```text id="m5m9q7"
Serial input:  1 → 0 → 1 → 1

Register:
           1000
           0100
           1010
           1101

Serial output:
           0 → 0 → 0 → 1 → 0 → 1 → 1
```

After the four input bits have propagated through the register, the original data is shifted out serially.

## Simulation

The testbench:

* Generates the clock
* Applies reset
* Shifts in the sequence `1 0 1 1`
* Continues shifting zeros to observe the stored data leaving the register
* Monitors the internal register and serial output
* Generates an FSDB waveform dump

## Files

```text id="p4g7v2"
rtl/siso.v
tb/siso_tb.v
makefile
siso.png
siso1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

## Key Concepts

* Serial-In Serial-Out (SISO)
* Shift registers
* Synchronous reset
* Serial data transfer
* Bit-by-bit data propagation
* Non-blocking assignments
* Clocked sequential logic
