# Synchronous FIFO

A parameterized synchronous FIFO implemented using a memory array, read/write pointers, and a data counter to manage buffered data.

## Parameters

| Parameter    | Default | Description                      |
| ------------ | ------: | -------------------------------- |
| `DATA_WIDTH` |       8 | Width of each stored data word   |
| `DEPTH`      |       8 | Number of entries in the FIFO    |
| `ADDR_WIDTH` |       3 | Width of the read/write pointers |

## Inputs

| Input   | Description                    |
| ------- | ------------------------------ |
| `clk`   | Clock                          |
| `rst`   | Active-high asynchronous reset |
| `wr_en` | Write enable                   |
| `rd_en` | Read enable                    |
| `din`   | Input data                     |

## Outputs

| Output  | Description             |
| ------- | ----------------------- |
| `dout`  | Output data             |
| `full`  | Indicates FIFO is full  |
| `empty` | Indicates FIFO is empty |

## Operation

The FIFO stores data in a memory array and uses separate pointers for writing and reading.

```text
                 Synchronous FIFO
                       │
          ┌────────────┴────────────┐
          │                         │
      Write Side                 Read Side
          │                         │
       wr_ptr                    rd_ptr
          │                         │
          └──────────┬──────────────┘
                     ▼
                Memory Array
                     │
                     ▼
                  dout
```

The `count` register tracks the number of stored entries.

```text
count = 0     → EMPTY = 1
count = DEPTH → FULL  = 1
```

### Write

A write occurs when:

```text
wr_en = 1 AND full = 0
```

The input data is stored at the current write pointer and the pointer advances.

### Read

A read occurs when:

```text
rd_en = 1 AND empty = 0
```

Data is read from the current read pointer and the pointer advances.

## FIFO Behavior

| Condition            | Operation                         |
| -------------------- | --------------------------------- |
| `wr_en=1`, not full  | Write data                        |
| `rd_en=1`, not empty | Read data                         |
| `full=1`             | Prevent write                     |
| `empty=1`            | Prevent read                      |
| Reset                | Clear pointers, count, and output |

## Simulation

The testbench verifies:

* FIFO reset
* Writing eight data values
* FIFO full condition
* Overflow attempt
* Reading all stored values
* FIFO empty condition
* Underflow attempt
* `$monitor` output
* FSDB waveform generation

## Files

```text
rtl/fifo.v
tb/tb.v
makefile
fifo0.png
fifo1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

## Key Concepts

* Synchronous FIFO
* Memory arrays
* Read and write pointers
* FIFO counter
* Full and empty flags
* Write enable
* Read enable
* Parameterized RTL
* Overflow protection
* Underflow protection
* FSDB waveform generation
