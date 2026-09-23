# Functions

A collection of combinational Verilog designs implemented using **reusable Verilog functions**, with emphasis on modularity and code reuse.

## Projects

| Category       | Projects                                                                              |
| -------------- | ------------------------------------------------------------------------------------- |
| **Arithmetic** | Full Adder, Full Adder Using Half Adder, Full Subtractor, Half Adder, Half Subtractor |
| **Comparator** | 1-bit Comparator                                                                      |
| **Decoder**    | 1-to-2 Decoder, 2-to-4 Decoder                                                        |
| **Encoder**    | 4-to-2 Encoder                                                                        |
| **Gates**      | AND, OR, NOT, NAND, NOR, XOR, XNOR, Buffer                                            |
| **MUX**        | 2×1 MUX, 4×1 MUX, 8×1 MUX                                                             |

## Function-Based Design

The projects demonstrate how a function can encapsulate reusable combinational logic.

A common example is the `mux_2x1` function:

```verilog
function mux_2x1;
    input a, b, s;
    begin
        mux_2x1 = s ? b : a;
    end
endfunction
```

The function can then be reused to construct larger or different combinational circuits.

### Example

A 4×1 MUX is constructed by combining multiple `mux_2x1` function calls:

```text
        ┌─────┐
in[0] ──┤     │
in[1] ──┤2×1  ├──┐
        └─────┘  │
                 ├── 2×1 ── out
        ┌─────┐  │
in[2] ──┤     ├──┘
in[3] ──┤2×1  │
        └─────┘
```

The same concept is extended to the 8×1 MUX.

## Simulation

Each project contains:

* RTL design
* Testbench
* Makefile
* Simulation result image
* Individual README

Testbenches verify the required input combinations and generate FSDB waveform files where applicable.

## Directory Structure

```text
functions/
├── ARITHMETIC/
├── COMPARATOR/
├── DECODER/
├── ENCODER/
├── GATES/
├── MUX/
└── README.md
```

Each project follows the common structure:

```text
PROJECT/
├── rtl/
│   └── design.v
├── tb/
│   └── tb.v
├── makefile
├── <simulation_result>.png
└── README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

## Key Concepts

* Verilog functions
* Code reuse
* Combinational logic
* Multiplexer-based logic implementation
* Hierarchical construction of larger MUXes
* RTL simulation and verification
