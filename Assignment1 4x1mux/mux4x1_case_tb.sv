//Testbench for 4x1 Mux

module mux4x1_case_tb;
  reg [3:0] in;
  reg [1:0] sel;
  wire out;
  
  mux4x1_case dut(.in(in),.sel(sel),.out(out));
  
  task printing;
    begin
      
      $display("A=%b,B=%b,C=%b,D=%b,Selectline= %b,Out = %b",in[0],in[1],in[2],in[3],sel,out);
    end
  endtask
                
  initial
    begin
      $dumpfile("mux4x1_case.vcd");
      $dumpvars(0,mux4x1_case_tb);
      in= $random; sel = $random; #10; printing;
      in= $random; sel = $random; #10; printing;
      in= $random; sel = $random; #10; printing;
      in= $random; sel = $random; #10; printing;
      in= $random; sel = 2'b00; #10; printing;
      in= $random; sel = 2'b01; #10; printing;
      in= $random; sel = 2'b10; #10; printing;
      in= $random; sel = 2'b11; #10; printing;
      
      $finish;
    end
endmodule
      
