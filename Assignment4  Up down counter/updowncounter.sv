// Code for updown counter

module updown(input rst,clk,updown,output reg [2:0]count);
  always @(posedge clk or posedge rst)
    begin
      if(rst)
        count<= 3'b000;
      else if(updown)
        count<= count+1;
      else
        count<= count-1;
    end
endmodule
  