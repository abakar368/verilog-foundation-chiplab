# Counters

This folder contains Verilog implementations of different synchronous and asynchronous digital counters, covering basic counting, programmable modulus, and shift-based counter designs.

## Projects

| Project           | Description                                               |
| ----------------- | --------------------------------------------------------- |
| `UP_COUNTER`      | 4-bit synchronous up counter                              |
| `DOWN_COUNTER`    | 4-bit synchronous down counter                            |
| `UP_DOWN_COUNTER` | 4-bit synchronous counter with selectable count direction |
| `MOD6_COUNTER`    | 3-bit Mod-6 counter                                       |
| `RIPPLE_COUNTER`  | 4-bit asynchronous ripple counter using T flip-flops      |
| `RING_COUNTER`    | 4-bit ring counter with a circulating `1`                 |
| `JOHNSON_COUNTER` | 4-bit Johnson counter with inverted feedback              |

## Counter Types

### Synchronous Counters

The synchronous counters use the same external clock for their state updates.

* Up Counter
* Down Counter
* Up/Down Counter
* Mod-6 Counter

### Asynchronous Counter

The ripple counter uses the output of one flip-flop to clock the next stage, causing the count transition to ripple through the flip-flops.

### Shift-Based Counters

The ring and Johnson counters use shift-register feedback:

* **Ring Counter:** circulates a single `1`.
* **Johnson Counter:** feeds the inverted output back into the shift register.

## Simulation

Each project includes:

* RTL design
* Verilog testbench
* Makefile
* Simulation waveform/result
* Project-specific README

FSDB waveform dumping is included in the testbenches for waveform analysis with supported Synopsys tools.

## Project Structure

```text
counters/
├── UP_COUNTER/
├── DOWN_COUNTER/
├── UP_DOWN_COUNTER/
├── MOD6_COUNTER/
├── RIPPLE_COUNTER/
├── RING_COUNTER/
├── JOHNSON_COUNTER/
└── README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
