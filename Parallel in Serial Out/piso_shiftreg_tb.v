// Testbench code for Parallel in Serial Out
`timescale 1ns / 1ns

module piso_shift_register_tb;
  logic clk,reset,load;
  logic [3:0] parallel_in;
  logic serial_out;

  piso_shift_register dut(clk,reset,load,parallel_in,serial_out);
  

  always #5 clk = ~clk;
  

  initial begin
    $dumpfile("piso.vcd");
    $dumpvars(0,piso_shift_register_tb);
    clk = 0;reset = 1;load = 0;parallel_in = 4'b0000;#10;   
    reset = 0;parallel_in = 4'b1011;load = 1;#10;
    load = 0;
    repeat (5) begin
      $display("Time: %0t | Serial Out: %b", $time, serial_out);#10;
    end
   
    $finish;
  end

endmodule
