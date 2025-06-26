// Code of Parallel in Serial out
`timescale 1ns/1ns
module piso_shift_register (
    input  logic clk,reset,load,
    input  logic [3:0] parallel_in,
    output logic serial_out
);

    logic [3:0] shift_reg;

    always_ff @(posedge clk) begin
        if (reset) begin
            shift_reg   <= 4'b0000;
          	serial_out  <= 1'b0; //Set it to 0
        end
        else if (load) begin
            shift_reg <= parallel_in; //load parallel in
        end
        else begin
            serial_out <= shift_reg[3];            // MSB first
            shift_reg <= {shift_reg[2:0], 1'b0};   // Shift left
        end
    end

endmodule
/* if LSB first
serial_out <= shift_reg[0];
shift_reg <= {1'b0,shift_reg[3:1]};
*/