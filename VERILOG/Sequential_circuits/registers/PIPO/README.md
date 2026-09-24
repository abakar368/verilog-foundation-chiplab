# PIPO Register

A 4-bit Parallel-In Parallel-Out (PIPO) register that loads and outputs all four bits in parallel.

## Inputs

| Input              | Description                  |
| ------------------ | ---------------------------- |
| `clk`              | Clock                        |
| `rst_n`            | Active-low synchronous reset |
| `parallel_in[3:0]` | 4-bit parallel data input    |

## Output

| Output              | Description                |
| ------------------- | -------------------------- |
| `parallel_out[3:0]` | 4-bit parallel data output |

## Operation

The register captures the entire 4-bit input on the rising edge of the clock.

```text
        ┌─────────────────┐
DIN ───►│                 │
[3:0]   │  4-bit Register │───► DOUT
        │                 │
CLK ───►│                 │
        └─────────────────┘
```

When `rst_n = 0`, the register is synchronously cleared:

```text
Q = 0000
```

When `rst_n = 1`, the input is loaded on each rising clock edge.

## Truth Table

| `rst_n` | Clock          | Operation          |
| ------- | -------------- | ------------------ |
| 0       | ↑              | Clear              |
| 1       | ↑              | Load `parallel_in` |
| 1       | No rising edge | Hold               |

## Simulation

The testbench verifies:

* Reset operation
* Loading `1010`
* Loading `0101`
* Loading `1111`
* Loading `0011`
* Parallel output behavior
* `$monitor` output
* FSDB waveform generation

## Files

```text
rtl/pipo.v
tb/pipo_tb.v
makefile
pip0.png
pipo1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

## Key Concepts

* PIPO register
* Parallel data transfer
* 4-bit register
* Flip-flop-based storage
* Clocked data loading
* Active-low synchronous reset
* FSDB waveform generation
