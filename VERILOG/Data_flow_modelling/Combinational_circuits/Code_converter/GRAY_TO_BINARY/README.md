# Gray to Binary Code Converter

A 4-bit Gray-to-Binary code converter implemented using **data-flow Verilog**.

## Input

| Signal | Description           |
| ------ | --------------------- |
| `gray` | 4-bit Gray code input |

## Output

| Signal | Description         |
| ------ | ------------------- |
| `bin`  | 4-bit binary output |

## Logic

The binary output is generated cumulatively using XOR operations:

```text id="8c6j2p"
bin[3] = gray[3]
bin[2] = bin[3] ^ gray[2]
bin[1] = bin[2] ^ gray[1]
bin[0] = bin[1] ^ gray[0]
```

## Simulation

The testbench iterates through all **16 possible 4-bit Gray input patterns** and displays the corresponding binary output.

FSDB waveform dumping is enabled for waveform analysis.

## Files

```text id="3rmj4x"
rtl/
└── gray_to_binary.v       # Data-flow RTL
tb/
└── gray_to_binary_tb.v    # Testbench
g_to_b.png    # Simulation result
makefile                   # Simulation commands
README.md                  # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
