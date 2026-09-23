# Tasks

A collection of combinational Verilog designs implemented using reusable **tasks**, demonstrating code reuse and modular design.

## Projects

| Category   | Project         | Description                                  |
| ---------- | --------------- | -------------------------------------------- |
| MUX        | 2×1 MUX         | 2-to-1 multiplexer using a task              |
| MUX        | 4×1 MUX         | 4-to-1 multiplexer using multiple task calls |
| Gates      | AND Gate        | 2-input AND gate using a task                |
| Gates      | OR Gate         | 2-input OR gate using a task                 |
| Gates      | XOR Gate        | 2-input XOR gate using a task                |
| Arithmetic | Half Adder      | Half adder using a task                      |
| Arithmetic | Half Subtractor | Half subtractor using a task                 |
| Arithmetic | Full Adder      | Full adder using a task                      |
| Arithmetic | Full Subtractor | Full subtractor using a task                 |

## Task-Based Design

A Verilog `task` is a reusable procedural block that can accept inputs and return one or more outputs.

Example:

```verilog
task mux_task;
    input a;
    input b;
    input s;
    output y;
    begin
        y = s ? b : a;
    end
endtask
```

The task can then be called from a procedural block:

```verilog
always @(*) begin
    mux_task(A, B, S, Y);
end
```

For these projects, tasks are used primarily for **combinational logic**.

## Project Structure

Each project follows the same basic structure:

```text
PROJECT/
├── rtl/
│   └── design.v
├── tb/
│   └── tb.v
├── makefile
├── simulation_result.png
└── README.md
```

The testbenches verify the designs and generate FSDB waveform data where applicable.

## Simulation

The projects can be simulated using the available Verilog simulation tools.

Typical workflow:

```text
RTL Design
    ↓
Task
    ↓
always @(*)
    ↓
Testbench
    ↓
Simulation
    ↓
Waveform
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim

## Key Concepts

* Verilog tasks
* Task input and output arguments
* Code reuse
* Combinational logic
* Multiplexers
* Logic gates
* Adders and subtractors
* Testbench development
* FSDB waveform generation
