# RAM and FIFO

A collection of Verilog memory and data-buffering designs demonstrating synchronous RAM storage and FIFO-based data management.

## Projects

| Project           | Description                                                                          |
| ----------------- | ------------------------------------------------------------------------------------ |
| `SINGLE_PORT_RAM` | Parameterized single-port synchronous RAM                                            |
| `SYNC_FIFO`       | Parameterized synchronous FIFO using memory, read/write pointers, and a data counter |

## 1. Single-Port RAM

The single-port RAM provides a memory array with a single address port for either reading or writing.

```text id="e5w2qr"
             Single-Port RAM
                  │
        ┌─────────┴─────────┐
        │                   │
      Write                Read
        │                   │
       DIN                DOUT
        │                   │
       ADDR ─────────────► Memory
```

The `we` signal selects the operation:

```text id="m8c4tz"
WE = 1 → Write DIN to memory
WE = 0 → Read memory into DOUT
```

The design is parameterized by data width, address width, and memory depth.

## 2. Synchronous FIFO

The synchronous FIFO provides temporary storage for data using a memory array and separate read/write pointers.

```text id="p2k7wd"
              SYNC FIFO
                  │
        ┌─────────┴─────────┐
        │                   │
    Write Side          Read Side
        │                   │
     wr_ptr              rd_ptr
        │                   │
        └───────┬───────────┘
                ▼
          Memory Array
                │
                ▼
              DOUT
```

A counter tracks the number of stored entries:

```text id="a9n3hf"
count = 0     → EMPTY
count = DEPTH → FULL
```

The FIFO prevents writes when full and reads when empty.

## RAM vs FIFO

| Feature      | Single-Port RAM       | Synchronous FIFO             |
| ------------ | --------------------- | ---------------------------- |
| Main purpose | Random-access storage | Sequential data buffering    |
| Addressing   | Explicit address      | Internal read/write pointers |
| Data access  | Address-based         | First-In, First-Out          |
| Control      | Write enable          | Read/write enables           |
| Status       | No full/empty flags   | Full and empty flags         |
| Storage      | Memory array          | Memory array + control logic |

## Simulation

Both projects include testbenches that exercise their main operations.

### RAM

* Writes data to multiple memory addresses
* Reads stored data
* Displays memory activity
* Generates FSDB waveform data

### FIFO

* Resets the FIFO
* Fills the FIFO
* Checks the full condition
* Attempts an overflow
* Reads all stored data
* Checks the empty condition
* Attempts an underflow
* Generates FSDB waveform data

## Project Structure

```text id="t7m4kp"
RAM_AND_FIFO/
├── SINGLE_PORT_RAM/
│   ├── rtl/
│   ├── tb/
│   ├── makefile
│   ├── <simulation_result>.png
│   └── README.md
│
├── SYNC_FIFO/
│   ├── rtl/
│   ├── tb/
│   ├── makefile
│   ├── <simulation_result>.png
│   └── README.md
│
└── README.md
```

## Key Concepts

* Memory arrays
* Single-port RAM
* Synchronous memory access
* Addressing
* Write enable
* FIFO architecture
* Read/write pointers
* FIFO counter
* Full and empty flags
* Overflow protection
* Underflow protection
* Parameterized RTL
* FSDB waveform generation

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
