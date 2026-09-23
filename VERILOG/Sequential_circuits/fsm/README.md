# Finite State Machines (FSM)

This section contains Verilog implementations of **Mealy and Moore finite state machines**, using sequence detectors to demonstrate state transitions, output logic, and overlapping/non-overlapping detection.

## Projects

| Project                      | Type      | Detection               |
| ---------------------------- | --------- | ----------------------- |
| `MEALY_1011_NON_OVERLAPPING` | Mealy FSM | `1011`, non-overlapping |
| `MEALY_1011_OVERLAPPING`     | Mealy FSM | `1011`, overlapping     |
| `MOORE_1011_NON_OVERLAPPING` | Moore FSM | `1011`, non-overlapping |
| `MOORE_1011_OVERLAPPING`     | Moore FSM | `1011`, overlapping     |

## Mealy vs Moore

### Mealy FSM

The output depends on both the **current state and input**.

```text
Current State + Input
        ↓
      Output
```

The Mealy detectors generate `detect` during the transition where the final bit of `1011` is received.

### Moore FSM

The output depends only on the **current state**.

```text
Current State
      ↓
   Output
```

The Moore detectors use a dedicated `S4` detection state where `detect = 1`.

## Overlapping vs Non-Overlapping

**Non-overlapping:** After detecting `1011`, the FSM returns to the initial state and starts a new search.

**Overlapping:** After detecting `1011`, the FSM retains useful bits from the detected sequence so another `1011` can begin immediately.

## Common Design Structure

The FSM implementations use three main sections:

```text
┌─────────────────────┐
│    State Register   │
│   Current State     │
└──────────┬──────────┘
           ↓
┌─────────────────────┐
│  Next-State Logic   │
│ Current State + din │
└──────────┬──────────┘
           ↓
      Next State
           │
           └──────→ State Register

Output Logic
     ↓
   detect
```

## Simulation

Each project includes a testbench that:

* Generates the clock.
* Applies reset.
* Sends a serial `1011` test sequence.
* Monitors the detector output.
* Generates an FSDB waveform dump.

## Folder Structure

```text
fsm/
├── mealy/
├── moore/
└── README.md
```

## Tools

* Verilog
* QuestaSim / ModelSim
* Icarus Verilog
* Synopsys
* GVim
