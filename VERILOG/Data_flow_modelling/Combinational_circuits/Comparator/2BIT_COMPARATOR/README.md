# 2-Bit Comparator

A 2-bit magnitude comparator implemented using **data-flow Verilog**. The circuit compares two 2-bit binary numbers and indicates whether `A` is greater than, equal to, or less than `B`.

## Inputs

| Signal   | Description   |
| -------- | ------------- |
| `a1, a0` | 2-bit input A |
| `b1, b0` | 2-bit input B |

## Outputs

| Signal   | Description         |
| -------- | ------------------- |
| `a_gt_b` | A is greater than B |
| `a_eq_b` | A is equal to B     |
| `a_lt_b` | A is less than B    |

## Logic

The comparator evaluates the most significant bits first, then compares the lower bits when the MSBs are equal.

```text id="r7j4km"
a_eq_b = (a1 ~^ b1) & (a0 ~^ b0)

a_gt_b = (a1 & ~b1) |
         ((a1 ~^ b1) & a0 & ~b0)

a_lt_b = (~a1 & b1) |
         ((a1 ~^ b1) & ~a0 & b0)
```

## Simulation

The testbench verifies three comparison cases:

| A    | B    | Result |
| ---- | ---- | ------ |
| `01` | `00` | A > B  |
| `10` | `10` | A = B  |
| `00` | `11` | A < B  |

## Files

```text id="n5w8qp"
rtl/
└── comparator_2bit.v      # Data-flow RTL
tb/
└── comparator_2bit_tb.v   # Testbench
makefile                   # Simulation commands
2it_comparator.png    # Simulation result
README.md                  # Project documentation
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
