# 🔢 Full Adder in Verilog

This project implements a **1-bit Full Adder** using Verilog and verifies its functionality with a testbench.

EDA Playgorund link: "https://www.edaplayground.com/x/J5DF"

---

## 📘 Description
A Full Adder is a combinational logic circuit that performs the addition of three binary digits: two significant bits (`a`,`b`) and an input carry (`cin`). It produces two outputs:

Sum (`sum`): the result of the bit-wise addition.

Carry-out (`cout`): the carry generated due to overflow of the result.

It is an essential building block in digital electronics, especially for constructing multi-bit binary adders such as ripple-carry adders, used in ALUs (Arithmetic Logic Units), CPUs, and other digital systems.
A Full Adder adds three 1-bit binary values:  
- Two operands: `a`, `b`  
- One carry-in: `cin`  
It outputs:
- `sum` (1-bit result)
- `cout` (carry out)

### Logic Equation
```verilog
sum  = a ^ b ^ cin;
cout = (a & b) | (b & cin) | (a & cin); 
```

## Truth Table
| A | B | Cin | Sum | Cout |
| - | - | --- | --- | ---- |
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

## Console output

![Console output](https://github.com/prathiknk8055/Anmaya_internship/blob/main/Assignment2%20Full%20Adder/output%20images/console.png?raw=true)

## Waveform
![waveform](https://github.com/prathiknk8055/Anmaya_internship/blob/main/Assignment2%20Full%20Adder/output%20images/waveform.png?raw=true)
