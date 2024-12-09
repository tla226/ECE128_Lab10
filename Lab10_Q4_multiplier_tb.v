`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 04:13:09 PM
// Design Name: 
// Module Name: Lab10_Q4_multiplier_tb
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


module Lab10_Q4_multiplier_tb;
reg clk, rst;
reg [2:0] adr1, adr2, adr_ram;
wire [7:0] result;
wire [2:0] st_out;

Lab10_Q4_multiplier uut1(clk, rst, adr1, adr2, adr_ram, result,st_out);


initial begin
clk = 1'b1;
rst = 1'b1;
#10;

/*adr1 = 0;
adr2 = 0;
adr_ram = 0;*/
rst =1'b0;



adr1 = 3'b001;
#10;
adr2 = 3'b010;
adr_ram = 3'b000;

#200
$stop;
end

always #5 clk = ~clk;



endmodule
