# PISO Shift Register

A 4-bit **Parallel-In Serial-Out (PISO)** shift register that loads 4-bit data in parallel and shifts it out serially, LSB first.

## Inputs

| Signal        | Width | Description                      |
| ------------- | ----: | -------------------------------- |
| `clk`         |     1 | Clock                            |
| `rst_n`       |     1 | Active-low synchronous reset     |
| `mode`        |     1 | `0` = Parallel Load, `1` = Shift |
| `parallel_in` |     4 | 4-bit parallel data input        |

## Output

| Signal       | Width | Description               |
| ------------ | ----: | ------------------------- |
| `serial_out` |     1 | Serial output from `q[0]` |

## Operation

* **Reset (`rst_n = 0`)** → Register clears to `0000`
* **Load (`mode = 0`)** → `parallel_in` is loaded into the register
* **Shift (`mode = 1`)** → Data shifts toward `q[0]`
* A `0` is shifted into `q[3]`
* Data is shifted out **LSB first**

Example:

```text
Parallel input: 1011

Load:    1011
Shift:   0101
Shift:   0010
Shift:   0001
Shift:   0000

Serial:  1 → 0 → 1 → 1
```

## Simulation

The testbench:

* Generates the clock
* Applies reset
* Loads `1011`
* Shifts the data out
* Loads `0101`
* Shifts it out again
* Monitors the register and serial output
* Generates an FSDB waveform dump

## Files

```text
rtl/piso.v
tb/piso_tb.v
makefile
piso0.png
piso1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

## Key Concepts

* Parallel-In Serial-Out (PISO)
* Shift registers
* Synchronous reset
* Parallel loading
* Serial data transfer
* Non-blocking assignments
* Clocked sequential logic
