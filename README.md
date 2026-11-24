
# 4-to-1 Multiplexer in Verilog

### Digital Logic Design | Verilog HDL

A digital logic project that implements a **4-to-1 Multiplexer (MUX)** using Verilog HDL.

The circuit selects one of four binary data inputs using a 2-bit selection signal and forwards the selected value to a single output.

**64 Passed Checks | 0 Failed | Icarus Verilog**

---

## Project Overview

A Multiplexer is a digital circuit that selects one input from several available inputs.

This project demonstrates how a 4-to-1 MUX operates through combinational logic, Verilog implementation, and simulation-based verification.

## How It Works

The circuit has:

- **4 data inputs:** `d0`, `d1`, `d2`, `d3`
- **2 selection inputs:** `s1`, `s0`
- **1 output:** `y`

The selection inputs determine which data input appears at the output.

## Logic Diagram

The following diagram illustrates the input selection process.

~~~mermaid
flowchart LR
    D0["Data Input d0"] --> MUX
    D1["Data Input d1"] --> MUX
    D2["Data Input d2"] --> MUX
    D3["Data Input d3"] --> MUX

    S1["Select s1"] -.-> MUX
    S0["Select s0"] -.-> MUX

    MUX["4-to-1 Multiplexer"]
    MUX --> Y["Output y"]
~~~

## Selection Table

| s1 | s0 | Selected Input | Output |
|---|---|---|---|
| 0 | 0 | d0 | y = d0 |
| 0 | 1 | d1 | y = d1 |
| 1 | 0 | d2 | y = d2 |
| 1 | 1 | d3 | y = d3 |

## Boolean Expression

The output can be expressed as:

`y = (~s1 & ~s0 & d0) | (~s1 & s0 & d1) | (s1 & ~s0 & d2) | (s1 & s0 & d3)`

This expression represents the four possible input-selection conditions.

---

## Project Files

| File | Description |
|---|---|
| `mux4.v` | 4-to-1 Multiplexer Verilog design |
| `mux4_tb.v` | Self-checking testbench for all binary-input combinations |
| `README.md` | Project overview and documentation |

---

## Simulation and Verification

The Multiplexer was tested using **Icarus Verilog** on EDA Playground.

The testbench verifies:

- All 16 combinations of the four data inputs.
- All 4 combinations of the selection inputs.
- Correct output selection for every combination.
- A total of 64 directed verification checks.

### Test Results

~~~text
Passed: 64
Failed: 0
ALL 64 MUX CHECKS PASSED
~~~

### Live Simulation

[View and Run the Simulation on EDA Playground](https://www.edaplayground.com/x/iepZ)

---

## Run Locally

### Requirements

Install Icarus Verilog and ensure `iverilog` and `vvp` are available in your system PATH.

### Compile and Run

~~~bash
iverilog -g2012 -s mux4_tb -o mux4_test.vvp mux4.v mux4_tb.v
vvp mux4_test.vvp
~~~

Expected result:

~~~text
Passed: 64
Failed: 0
ALL 64 MUX CHECKS PASSED
~~~

---

## Technologies

- Verilog HDL
- Digital Logic Design
- Icarus Verilog
- EDA Playground
- GitHub

---

## Author

**Abdulaziz Al-Modawi Al-Qahtani**

*Digital logic and hardware design project.*
