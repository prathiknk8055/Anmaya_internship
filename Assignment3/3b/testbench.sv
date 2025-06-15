// Code 2x1 Mux with D FF delay
module mux2x1withdelay(input clk,din,sel, output out);
  reg q;
  always @(posedge clk)
    begin
      q <= sel?din:q;
    end
  assign out = q;
endmodule
      


