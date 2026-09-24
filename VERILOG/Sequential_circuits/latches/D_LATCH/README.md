# D Latch

A level-sensitive D latch that stores the input data when enabled and holds its previous value when disabled.

## Inputs

| Input | Description        |
| ----- | ------------------ |
| `d`   | Data input         |
| `en`  | Active-high enable |

## Output

| Output | Description |
| ------ | ----------- |
| `q`    | Stored data |

## Operation

The latch is transparent when `en = 1`:

```text
EN = 1 → Q follows D
EN = 0 → Q holds its previous value
```

The RTL uses a combinational `always @(*)` block with conditional assignment to infer latch behavior.

```text
        ┌─────────┐
D ─────►│         │
        │ D Latch │────► Q
EN ────►│         │
        └─────────┘
```

## Truth Table

| EN | D | Q    |
| -- | - | ---- |
| 0  | X | Hold |
| 1  | 0 | 0    |
| 1  | 1 | 1    |

`X` means the data input can change without affecting the stored value while the latch is disabled.

## Simulation

The testbench verifies:

* Initial disabled state
* Loading `1`
* Holding `1`
* Loading `0`
* Holding `0`
* Loading `1` again
* `$monitor` output
* FSDB waveform generation

## Files

```text
rtl/d_latch.v
tb/d_latch_tb.v
makefile
d_latch0.png
d_latch1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

## Key Concepts

* Level-sensitive storage
* D latch
* Enable signal
* Transparent mode
* Hold mode
* Latch inference
* Combinational `always @(*)`
* FSDB waveform generation
