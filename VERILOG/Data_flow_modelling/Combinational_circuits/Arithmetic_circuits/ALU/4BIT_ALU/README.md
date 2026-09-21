# 4-Bit ALU

A 4-bit Arithmetic Logic Unit implemented using **data-flow Verilog**. The ALU performs arithmetic, logical, and shift operations selected by a 3-bit control signal.

## Inputs

| Signal | Description              |
| ------ | ------------------------ |
| `a`    | 4-bit input operand      |
| `b`    | 4-bit input operand      |
| `sel`  | 3-bit operation selector |

## Output

| Signal | Description            |
| ------ | ---------------------- |
| `y`    | 4-bit operation result |

## Operations

| `sel` | Operation | Description |
| ----- | --------- | ----------- |
| `000` | `a + b`   | Addition    |
| `001` | `a - b`   | Subtraction |
| `010` | `a & b`   | AND         |
| `011` | `a \| b`  | OR          |
| `100` | `a ^ b`   | XOR         |
| `101` | `a << 1`  | Left shift  |
| `110` | `a >> 1`  | Right shift |
| `111` | `~a`      | NOT         |

## Simulation

The testbench uses:

```text
a = 1010
b = 0011
```

and tests all eight `sel` values from `000` to `111`.

## Files

```text
rtl/
└── alu_4bit.v             # Data-flow RTL
tb/
└── alu_4bit_tb.v          # Testbench
alu_4bit.png    # Simulation result
Makefile                   # Simulation commands
README.md                  # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
