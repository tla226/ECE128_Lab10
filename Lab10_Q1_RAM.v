
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12/05/2024 01:18:59 PM
// Design Name:
// Module Name: Lab10_Q1_RAM
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module Lab10_Q1_RAM(
input clk, rst, i_write_en,
input [2:0] i_addr,
input [2:0] i_write_data,
output reg [3:0] o_read_data
    );

reg [3:0] mem [0:7];

always @(posedge clk) begin
    if (rst) begin
        mem[0] <=4'b0;
        mem[1] <=4'b0;
        mem[2] <=4'b0;
        mem[3] <=4'b0;
        mem[4] <=4'b0;
        mem[5] <=4'b0;
        mem[6] <=4'b0;
        mem[7] <=4'b0;
    end
    else begin
        if (i_write_en) begin
            mem[i_addr] <= i_write_data;
        end
        else begin
            o_read_data <= mem[i_addr];
        end
    end
end

endmodule
