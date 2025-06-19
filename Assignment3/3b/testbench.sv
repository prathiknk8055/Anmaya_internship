// Testbench for mux2x1 with D FF code

module mux2x1withdelay_tb;
  reg clk,din,sel;
  wire out;
  
  mux2x1withdelay dut(clk,din,sel,out);
  
  always #5 clk = ~clk;
  
  initial begin
    $monitor("Time = %0t, sel= %b,din=%b,out=%b",$time,sel,din,out);
    $dumpfile("mux2x1withdelay.vcd");
    $dumpvars(0,mux2x1withdelay_tb);
    
    clk=0;sel=0;din=0;#3;
    sel=1;din=1;#10;
    sel=0;din=1;#10;
    sel=0;din=1;#10;
    sel=1;din=0;#10;
    sel=0;din=0;#10;
    sel=0;din=0;#10;
    
    $finish;
  end
endmodule
