# Functions and Tasks

A collection of combinational Verilog designs implemented using **functions and tasks**, demonstrating procedural abstraction, code reuse, and modular design.

## Overview

Verilog functions and tasks allow commonly used operations to be defined once and reused throughout a design.

```text
                Functions & Tasks
                       │
             ┌─────────┴─────────┐
             │                   │
         Functions             Tasks
             │                   │
      Single return value   Multiple outputs
             │                   │
             └─────────┬─────────┘
                       │
              Reusable Logic
                       │
              Combinational Designs
```

## Functions

Functions are used to encapsulate reusable operations that return a value.

### Projects

| Category   | Projects                                                                              |
| ---------- | ------------------------------------------------------------------------------------- |
| Arithmetic | Full Adder, Full Adder Using Half Adder, Full Subtractor, Half Adder, Half Subtractor |
| Comparator | 1-bit Comparator                                                                      |
| Decoder    | 1-to-2 Decoder, 2-to-4 Decoder                                                        |
| Encoder    | 4-to-2 Encoder                                                                        |
| Gates      | AND, OR, NOT, NAND, NOR, XOR, XNOR, Buffer                                            |
| MUX        | 2×1 MUX, 4×1 MUX, 8×1 MUX                                                             |

Example:

```verilog
function mux_2x1;
    input a;
    input b;
    input s;
    begin
        mux_2x1 = s ? b : a;
    end
endfunction
```

The function can then be reused wherever the same operation is required.

## Tasks

Tasks are procedural blocks that can accept multiple inputs and produce one or more outputs.

### Projects

| Category   | Projects                                                 |
| ---------- | -------------------------------------------------------- |
| Arithmetic | Full Adder, Full Subtractor, Half Adder, Half Subtractor |
| Gates      | AND, OR, XOR                                             |
| MUX        | 2×1 MUX, 4×1 MUX                                         |

Example:

```verilog
task full_adder;
    input a;
    input b;
    input cin;
    output sum;
    output cout;
    begin
        sum  = a ^ b ^ cin;
        cout = (a & b) | (a & cin) | (b & cin);
    end
endtask
```

The task is called from a combinational procedural block:

```verilog
always @(*) begin
    full_adder(A, B, CIN, SUM, COUT);
end
```

## Function vs Task

| Feature          | Function              | Task                         |
| ---------------- | --------------------- | ---------------------------- |
| Return value     | One return value      | Can produce multiple outputs |
| Output arguments | Not normally required | Supported                    |
| Typical use      | Calculate a value     | Perform a reusable operation |
| Timing controls  | Not allowed           | Can be used in tasks         |
| Example          | MUX selection         | Full adder with SUM and COUT |

## Project Structure

The Functions and Tasks projects use a consistent structure:

```text
FUNCTIONS/
├── Project/
│   ├── rtl/
│   ├── tb/
│   ├── makefile
│   ├── simulation_result.png
│   └── README.md

TASKS/
├── Project/
│   ├── rtl/
│   ├── tb/
│   ├── makefile
│   ├── simulation_result.png
│   └── README.md
```

Each project contains its RTL design, testbench, simulation files, and project-specific README.

## Simulation Flow

```text
Design
  ↓
Function / Task
  ↓
Testbench
  ↓
Simulation
  ↓
Waveform
```

The testbenches verify the expected behavior by applying input combinations and observing the outputs. FSDB waveform dumping is used in the projects where supported.

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

## Key Concepts

* Verilog functions
* Verilog tasks
* Procedural abstraction
* Code reuse
* Combinational logic
* Task input/output arguments
* Function return values
* Testbench development
* FSDB waveform generation
