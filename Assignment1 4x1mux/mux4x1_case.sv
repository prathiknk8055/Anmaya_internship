// Code for 4:1 mux using case

module mux4x1_case( input [3:0] in, input [1:0] sel , output reg out);
  always@(*) begin
    case(sel)
      2'b00: out<=in[0];
      2'b01: out<=in[1];
      2'b10: out<=in[2];
      2'b11: out<=in[3];
    endcase
  end
endmodule


/* for assign statement can use

assign out= sel[1]?(sel[0]?in[3]:in[2]):(sel[0]?in[1]:in[0]);

*/