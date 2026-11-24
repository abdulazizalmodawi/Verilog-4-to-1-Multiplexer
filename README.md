
# 4-bit Binary Comparator in Verilog

### Digital Logic Design | Verilog HDL

A digital logic circuit that compares two 4-bit binary numbers using Verilog HDL.

The comparator determines whether the first number is **greater than**, **equal to**, or **less than** the second number.

**256 Passed Checks | 0 Failed | Icarus Verilog**

---

## Project Overview

A binary comparator is a combinational logic circuit used to compare binary values.

This project implements a 4-bit comparator, demonstrates its operation, and verifies every possible pair of 4-bit input values.

## How It Works

The circuit receives two unsigned 4-bit inputs:

- `a` — First binary number (0–15)
- `b` — Second binary number (0–15)

It produces three outputs:

- `greater` — High when A > B
- `equal` — High when A = B
- `less` — High when A < B

Exactly one output is high for every valid pair of binary inputs.

## Logic Diagram

~~~mermaid
flowchart LR
    A["Input A (4 bits)"] --> COMP["4-bit Binary Comparator"]
    B["Input B (4 bits)"] --> COMP

    COMP --> GT["greater: A > B"]
    COMP --> EQ["equal: A = B"]
    COMP --> LT["less: A < B"]
~~~

## Comparison Examples

| A | B | Greater | Equal | Less |
|---|---|---|---|---|
| 0000 | 0000 | 0 | 1 | 0 |
| 0011 | 0101 | 0 | 0 | 1 |
| 1001 | 0110 | 1 | 0 | 0 |
| 1111 | 1111 | 0 | 1 | 0 |
| 1111 | 0000 | 1 | 0 | 0 |

## Project Files

| File | Description |
|---|---|
| `comparator4.v` | 4-bit Comparator Verilog design |
| `comparator4_tb.v` | Testbench covering all 256 input combinations |
| `README.md` | Project overview and documentation |

## Simulation and Verification

The comparator was simulated using **Icarus Verilog** on EDA Playground.

The testbench verifies:

- All 16 values of input A
- All 16 values of input B
- All 256 possible input pairs
- Greater-than, equal-to, and less-than outputs
- Exactly one active comparison output per test case

### Test Results

~~~text
Passed: 256
Failed: 0
ALL 256 COMPARATOR CHECKS PASSED
~~~

### Live Simulation

[View and Run the Simulation on EDA Playground](https://www.edaplayground.com/x/NTVx)


## Run Locally

Install Icarus Verilog and run:

```bash
iverilog -g2012 -s comparator4_tb -o comparator4_test.vvp comparator4.v comparator4_tb.v
vvp comparator4_test.vvp
```


## Technologies

- Verilog HDL
- Digital Logic Design
- Icarus Verilog
- EDA Playground
- GitHub

## Author

**Abdulaziz Al-Modawi Al-Qahtani**

*Digital logic and hardware design project.*
