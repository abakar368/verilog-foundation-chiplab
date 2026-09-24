# SIPO Shift Register

A 4-bit **Serial-In Parallel-Out (SIPO)** shift register that accepts data serially and makes the accumulated 4-bit data available in parallel.

## Inputs

| Signal      | Width | Description                  |
| ----------- | ----: | ---------------------------- |
| `clk`       |     1 | Clock                        |
| `rst_n`     |     1 | Active-low synchronous reset |
| `serial_in` |     1 | Serial data input            |

## Output

| Signal         | Width | Description              |
| -------------- | ----: | ------------------------ |
| `parallel_out` |     4 | Parallel register output |

## Operation

* **Reset (`rst_n = 0`)** → Register clears to `0000`
* On every rising clock edge, `serial_in` enters `q[3]`
* Existing bits shift toward `q[0]`
* The accumulated 4-bit value is available on `parallel_out`

Example:

```text
Serial input:  1 → 0 → 1 → 1

After shifts:
             1000
             0100
             1010
             1101
```

The serial data is therefore accumulated into the register and presented as a 4-bit parallel output.

## Simulation

The testbench:

* Generates the clock
* Applies reset
* Shifts in `1`, `0`, `1`, and `1`
* Monitors the parallel output
* Generates an FSDB waveform dump

## Files

```text
rtl/sipo.v
tb/sipo_tb.v
makefile
sipo0.png
sipo1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

## Key Concepts

* Serial-In Parallel-Out (SIPO)
* Shift registers
* Synchronous reset
* Serial data transfer
* Parallel data output
* Non-blocking assignments
* Clocked sequential logic
