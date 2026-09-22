# Gate-Level Modeling

This section contains Verilog digital logic designs implemented using **gate-level modeling**, where circuits are described using Verilog built-in gate primitives such as `AND`, `OR`, `NOT`, `XOR`, and `XNOR`.

## Projects

| Project           | Description                                               |
| ----------------- | --------------------------------------------------------- |
| `1x2_DEMUX`       | 1-to-2 Demultiplexer using `NOT` and `AND` gates          |
| `2x1_MUX`         | 2-to-1 Multiplexer using `NOT`, `AND`, and `OR` gates     |
| `2x4_DECODER`     | 2-to-4 Decoder using `NOT` and `AND` gates                |
| `2x4_ENCODER`     | 4-to-2 Encoder using `OR` gates                           |
| `3x8_ENCODER`     | 8-to-3 Encoder using `OR` gates                           |
| `4x1_MUX`         | 4-to-1 Multiplexer using `NOT`, `AND`, and `OR` gates     |
| `COMPARATOR`      | 1-bit Comparator using `NOT`, `AND`, and `XNOR` gates     |
| `FULL_ADDER`      | Full Adder using `XOR`, `AND`, and `OR` gates             |
| `FULL_SUBTRACTOR` | Full Subtractor using `XOR`, `NOT`, `AND`, and `OR` gates |
| `HALF_ADDER`      | Half Adder using `XOR` and `AND` gates                    |
| `HALF_SUBTRACTOR` | Half Subtractor using `XOR`, `NOT`, and `AND` gates       |

## Modeling Approach

Gate-level modeling describes digital circuits by directly instantiating Verilog primitive gates and connecting them with wires.

Example:

```verilog
wire w1, w2;

and (w1, a, b);
or  (y, w1, c);
```

This approach provides a low-level representation of the logic circuit by explicitly describing the gates and their connections.

## Simulation

Each project contains:

* RTL design
* Testbench
* Makefile
* Simulation waveform

The testbenches apply input combinations and verify the corresponding circuit outputs.

## Project Structure

Each project follows this structure:

```text
PROJECT_NAME/
├── rtl/
│   └── <design>.v
├── tb/
│   └── <design>_tb.v
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
