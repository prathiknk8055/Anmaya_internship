// Signed Adder 4bit.sv
`timescale 1ns/1ns
module signed_adder_4bit (
  input  logic signed [3:0] a,
  input  logic signed [3:0] b,   
  output logic signed [4:0] sum,  
  output logic overflow);

  assign sum = a + b;
  assign overflow = (a[3] == b[3]) && (sum[3] != a[3]);

endmodule
