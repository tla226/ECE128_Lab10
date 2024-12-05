`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 02:51:13 PM
// Design Name: 
// Module Name: Lab10_Q2_ROM_tb
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


module Lab10_Q2_ROM_tb;
reg [2:0] ROM_addr;
wire [3:0] ROM_data;

Lab10_Q2_ROM uut1(ROM_addr, ROM_data);


initial begin

ROM_addr = 3'd0;
#10
ROM_addr = 3'd1;
#10
ROM_addr = 3'd2;
#10
ROM_addr = 3'd3;
#10
ROM_addr = 3'd4;
#10
ROM_addr = 3'd5;
#10
ROM_addr = 3'd6;
#10
ROM_addr = 3'd7;
#20
$stop;

end




endmodule
