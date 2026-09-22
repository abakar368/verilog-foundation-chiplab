# Flip-Flops

This folder contains Verilog implementations of fundamental edge-triggered flip-flops, demonstrating different methods of storing and controlling a single bit of sequential data.

## Projects

| Project       | Description                                                       |
| ------------- | ----------------------------------------------------------------- |
| `D_FF`        | D flip-flop that captures the data input on the rising clock edge |
| `JK_FF`       | JK flip-flop supporting hold, set, reset, and toggle operations   |
| `SR_FF`       | SR flip-flop supporting set, reset, and hold operations           |
| `T_FLIP_FLOP` | T flip-flop that holds or toggles its state                       |

## Flip-Flop Operations

| Flip-Flop | Main Function               |
| --------- | --------------------------- |
| D         | Stores the value of `D`     |
| JK        | Set, reset, hold, or toggle |
| SR        | Set, reset, or hold         |
| T         | Hold or toggle              |

All implementations use a **rising-edge-triggered clock** and an **active-low synchronous reset**.

## Common Features

Each project demonstrates:

* Sequential state storage
* Positive-edge clocking
* Active-low synchronous reset
* Complementary `q_bar` output
* Verilog `always @(posedge clk)` modeling
* Testbench-based functional verification
* FSDB waveform generation

## Simulation

Each project includes its own testbench for verifying the corresponding flip-flop behavior. The testbenches apply different input combinations and observe the resulting `q` and `q_bar` outputs.

## Project Structure

```text
flip_flops/
├── D_FF/
├── JK_FF/
├── SR_FF/
├── T_FLIP_FLOP/
└── README.md
```

Each project contains:

```text
rtl/
tb/
makefile
<simulation_result>.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
