// testbench for fulladder

module fulladder_tb;
  
  reg a,b,cin;
  wire cout,sum;
  integer i;
  
  fulladder dut(.a,.b,.cin,.cout,.sum);
  
  initial
    begin
      $dumpfile("fulladder.vcd");
      $dumpvars(0,fulladder_tb);
      $monitor("time %0t,a= %b,b=%b,cin=%b,sum=%b,cout=%b",$time,a,b,cin,sum,cout);
      
      for(i=0;i<=7;i++)
        begin
          {a,b,cin}=i; #10;
        end
      $finish;
    end
endmodule
  
