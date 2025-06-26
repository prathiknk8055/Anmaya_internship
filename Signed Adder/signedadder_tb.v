`//Testbench Code for Signed Adder 4bit
`timescale 1ns / 1ps
module signed_adder_4bit_tb;
  logic signed [3:0] a, b;
  logic signed [4:0] sum;
  logic overflow;

  signed_adder_4bit dut(a,b,sum,overflow);

  initial begin
    $dumpfile("signedadder.vcd");
    $dumpvars(0,signed_adder_4bit_tb);
    $monitor("a=%0d, b=%0d, sum=%0d, overflow=%b", a, b, sum, overflow);
    a = -3; b = -2; #1;
    a = 7; b = 0; #1;        
    a = 0; b = -8; #1;
    a = 7; b = 2; #1;
    a = -8; b = -3; #1;
    a = 4; b = -5; #1;
    a = -4; b = 3; #1;
    $finish;
  end

endmodule

