// Testbench code for mux2x1

module mux2x1_tb;
  
  reg a,b,sel;
  wire out;
  
  mux2x1 dut(.a,.b,.sel,.out);
  
  initial begin
    $dumpfile("mux2x1.vcd");
    $dumpvars(0,mux2x1_tb);
    
    $monitor("at time %0t a= %b, b=%b,sel=%b,out=%b",$time,a,b,sel,out);
    
    a=$random;b=$random;sel=$random;#10;
    a=$random;b=$random;sel=$random;#10;
    a=$random;b=$random;sel=$random;#10;
    a=1'b0;b=1'b1;sel=1'b0;#10;
    a=1'b0;b=1'b1;sel=1'b1;#10;
    
    $finish;
  end
endmodule