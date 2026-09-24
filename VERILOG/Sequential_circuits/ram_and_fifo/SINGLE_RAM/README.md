# Single-Port RAM

A parameterized single-port synchronous RAM that supports either a write or a read operation on each clock cycle.

## Parameters

| Parameter    | Default | Description                    |
| ------------ | ------: | ------------------------------ |
| `DATA_WIDTH` |       8 | Width of each stored data word |
| `ADDR_WIDTH` |       4 | Width of the address           |
| `DEPTH`      |      16 | Number of memory locations     |

## Inputs

| Input  | Description    |
| ------ | -------------- |
| `clk`  | Clock          |
| `we`   | Write enable   |
| `addr` | Memory address |
| `din`  | Input data     |

## Output

| Output | Description |
| ------ | ----------- |
| `dout` | Read data   |

## Operation

The RAM contains:

```verilog id="u5m1k7"
reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];
```

The `we` signal determines the operation:

```text id="r8c2vz"
WE = 1 → Write DIN to memory
WE = 0 → Read memory into DOUT
```

Both operations occur on the rising edge of `clk`.

## Memory Structure

```text id="f3x7qa"
              Single-Port RAM
                    │
             ┌──────┴──────┐
             │ Memory Array │
             └──────┬──────┘
                    │
        ┌───────────┴───────────┐
        │                       │
      Write                   Read
        │                       │
       DIN                    DOUT
        │                       │
       ADDR                   ADDR
```

## Simulation

The testbench:

* Writes data to addresses `0–7`
* Stores values starting from `8'hA0`
* Reads the stored values from addresses `0–7`
* Displays memory activity using `$monitor`
* Generates an FSDB waveform

## Files

```text id="m6n4px"
rtl/ram.v
tb/tb.v
makefile
ram0.png
ram1.png
README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

## Key Concepts

* RAM
* Single-port memory
* Memory arrays
* Address decoding
* Write enable
* Synchronous read
* Synchronous write
* Parameterized RTL
* FSDB waveform generation
