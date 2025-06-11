
# 4:1 Multiplexer using case Statement in System Verilog

This project implements a 4-to-1 multiplexer using a case statement in Verilog. The mux selects one of four input bits (in[0] to in[3]) based on a 2-bit select line (sel) and outputs the selected bit to out.

## Features
1) Written using behavioral modeling (always @(*) block with case)

2) Also includes an alternate assign-based implementation (commented)

3) Accompanied by a testbench generating random values and fixed test cases

4) Generates a VCD file for waveform analysis

![diagram]()

## Ouput table

Example Output Table (Simulated Values)
Here’s an example of how the mux behaves (values will differ every run due to $random):

|Cycle|	in(D C B A)|	Sel| Selected input|	Out|
|----|-----|------|---|--|
|1	|1010|	00|	A = 0|	0|
|2	|1010|	01|	B = 1|	1|
|3	|1010|	10|	C = 0|	0|
|4	|1010|	11|	D = 1|	1|

Note: D = in[3], C = in[2], B = in[1], A = in[0]
## Console output

![Console output](https://github.com/prathiknk8055/Anmaya_internship/blob/main/Assignment1%204x1mux/output%20images/console.png?raw=true)

## Waveform

![waveform output](https://github.com/prathiknk8055/Anmaya_internship/blob/main/Assignment1%204x1mux/output%20images/waveform.png?raw=true)

