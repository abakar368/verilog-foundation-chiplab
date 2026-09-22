# 3-Bit Mod-6 Counter

A 3-bit synchronous Mod-6 counter that counts from 0 to 5 and then returns to 0.

## Inputs

| Signal  | Width | Description                  |
| ------- | ----: | ---------------------------- |
| `clk`   |     1 | Clock input                  |
| `rst_n` |     1 | Active-low synchronous reset |

## Output

| Signal    | Width | Description   |
| --------- | ----: | ------------- |
| `counter` |     3 | Counter state |

## Operation

On every rising edge of `clk`:

* When `rst_n = 0`, the counter resets to `000`.
* When `rst_n = 1`, the counter increments by 1.
* When the counter reaches `101` (decimal 5), the next state is `000`.

The counting sequence is:

```text id="h2p4qk"
000 → 001 → 010 → 011 → 100 → 101 → 000 → ...
 0     1     2     3     4     5     0
```

Although 3 bits can represent 8 states (`0–7`), this counter uses only **6 states**, making it a **Mod-6 counter**.

## RTL

```verilog id="d4nq6m"
always @(posedge clk) begin
    if (!rst_n)
        counter <= 0;
    else if (counter == 3'b101)
        counter <= 0;
    else
        counter <= counter + 3'b001;
end
```

## Simulation

The testbench:

* Generates a clock with a 10-time-unit period.
* Initially holds reset low.
* Releases reset after 10 time units.
* Runs for 120 additional time units to observe several Mod-6 cycles.
* Displays the counter value using `$monitor`.
* Generates an FSDB waveform dump.

## Files

```text id="f6q2ny"
rtl/mod6_counter.v
tb/mod6_counter_tb.v
makefile
mod6_counter.png
mod6_counter0.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

```
```
