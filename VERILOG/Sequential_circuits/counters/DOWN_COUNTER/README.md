# 4-Bit Down Counter

A 4-bit synchronous down counter implemented in Verilog with an **active-low synchronous reset**.

## Inputs

| Signal  | Description                  |
| ------- | ---------------------------- |
| `clk`   | Clock signal                 |
| `rst_n` | Active-low synchronous reset |

## Output

| Signal         | Description          |
| -------------- | -------------------- |
| `counter[3:0]` | 4-bit counter output |

## Operation

The counter operates on every rising edge of `clk`.

* When `rst_n = 0`, the counter is reset to `0000`.
* When `rst_n = 1`, the counter decrements by 1 on each rising clock edge.
* Since the counter is 4 bits wide, it wraps from `0000` to `1111`.

Example:

```text
0000 → 1111 → 1110 → 1101 → ... → 0001 → 0000
```

## RTL

```verilog
always @(posedge clk) begin
    if (!rst_n)
        counter <= 4'b0000;
    else
        counter <= counter - 1'b1;
end
```

## Simulation

The testbench generates a clock with a 10-time-unit period, holds the counter in reset initially, then releases `rst_n` and allows the counter to run long enough to observe the 4-bit wraparound.

The testbench also generates an FSDB waveform dump for waveform analysis.

## Files

```text
rtl/down_counter.v
tb/down_counter_tb.v
makefile
down_counter.png
down_counter0.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
