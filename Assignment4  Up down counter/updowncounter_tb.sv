// Code for Testbench of updown counter

module updown_tb;
  reg rst,clk,updown;
  wire [2:0]count;
  
  updown dut(rst,clk,updown,count);
  
  always #5 clk= ~clk;
  
  initial begin
    $dumpfile("updown.vcd");
    $dumpvars(0,updown_tb);
    $monitor("rst=%b,updown=%b;count = %d",rst,updown,count);
    clk=0;rst=1;updown=0;#10;
    rst=0;updown=1;#60;
    rst=0;updown=0;#50;
    rst=1;
    $finish;
  end
endmodule
