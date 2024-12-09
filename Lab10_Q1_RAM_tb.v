
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 02:51:31 PM
// Design Name: 
// Module Name: Lab10_Q1_RAM_tb
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


module Lab10_Q1_RAM_tb;
reg clk, rst, i_write_en;
reg [2:0] i_addr;
reg [7:0] i_write_data;
wire [7:0] o_read_data;


Lab10_Q1_RAM uut(clk, rst, i_write_en, i_addr, i_write_data, o_read_data);


initial begin
clk = 1'b0;
rst = 1'b1;
#15 rst = 1'b0;
i_write_en = 0;
i_addr = 0;

#10;
i_write_en = 1;
i_addr = 0;
i_write_data = 8'b00000000;
#10;
i_write_en = 0;


#10;
i_write_en = 1;
i_addr = 1;
i_write_data = 8'b00000001;
#10;
i_write_en = 0;

#10;
i_write_en = 1;
i_addr = 2;
i_write_data = 8'b00000010;
#10;
i_write_en = 0;

#10;
i_write_en = 1;
i_addr = 3;
i_write_data = 8'b00000011;
#10;
i_write_en = 0;

#10;
i_write_en = 1;
i_addr = 4;
i_write_data = 8'b00000100;
#10;
i_write_en = 0;

#10;
i_write_en = 1;
i_addr = 5;
i_write_data = 8'b00000101;
#10;
i_write_en = 0;


#10;
i_write_en = 1;
i_addr = 6;
i_write_data = 8'b00000110;
#10;
i_write_en = 0;

#10;
i_write_en = 1;
i_addr = 7;
i_write_data = 8'b00000111;
#10;
i_write_en = 0;


#50
$stop;


end

always #5 clk = ~clk;



endmodule
