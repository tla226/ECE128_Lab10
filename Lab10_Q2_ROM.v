`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12/05/2024 01:33:09 PM
// Design Name:
// Module Name: Lab10_Q2_ROM
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


module Lab10_Q2_ROM(
input [2:0] ROM_addr,
output reg [3:0] ROM_data
    );
always @(ROM_addr) begin
    case(ROM_addr)
        3'd0: ROM_data = 4'b0000;
        3'd1: ROM_data = 4'b1100;
        3'd2: ROM_data = 4'b0110;
        3'd3: ROM_data = 4'b0111;
        3'd4: ROM_data = 4'b1000;
        3'd5: ROM_data = 4'b0001;
        3'd6: ROM_data = 4'b1101;
        3'd7: ROM_data = 4'b1110;
     endcase
end
       
endmodule