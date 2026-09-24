# Latches

A collection of behavioral Verilog latch designs demonstrating level-sensitive storage, enable control, and Set/Reset operations.

## Projects

| Project          | Description                                     |
| ---------------- | ----------------------------------------------- |
| `D_LATCH`        | Level-sensitive D latch with active-high enable |
| `GATED_SR_LATCH` | SR latch controlled by an active-high enable    |
| `SR_LATCH`       | Active-low SR latch with complementary outputs  |

## 1. D Latch

The D latch stores the input data when the enable signal is active.

```text id="g7j2rp"
EN = 1 → Q follows D
EN = 0 → Q holds
```

It demonstrates a simple level-sensitive data storage element.

## 2. Gated SR Latch

The gated SR latch adds an enable signal to an SR latch.

```text id="2m4z6n"
EN = 0 → Hold
EN = 1 → S/R control the latch
```

When enabled:

| S | R | Operation |
| - | - | --------- |
| 0 | 0 | Hold      |
| 0 | 1 | Reset     |
| 1 | 0 | Set       |
| 1 | 1 | Invalid   |

## 3. SR Latch

The SR latch in this section uses **active-low Set and Reset inputs**.

```text id="v1f6qy"
S_n = 0 → Set
R_n = 0 → Reset
S_n = R_n = 1 → Hold
S_n = R_n = 0 → Invalid
```

It also provides the complementary output:

```verilog id="u4r7t2"
assign q_bar = ~q;
```

## Latch Concept

Latches are **level-sensitive storage elements**. Unlike flip-flops, which respond to an edge of the clock, a latch can respond to inputs throughout an ena
