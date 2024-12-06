`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 02:57:56 PM
// Design Name: 
// Module Name: Lab10_Q3_CU_tb
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


module Lab10_Q3_CU_tb;
reg clk, reset;
reg [2:0] adr1;
reg [2:0] adr2;
wire w_rf;
wire [2:0] adr;
wire DA,SA,SB;
wire [2:0] st_out;
//output reg done,
wire [2:0] w_ram;

Lab10_Q3_CU uut1(clk, reset, adr1, adr2, w_rf, adr, DA, SA, SB, st_out, w_ram);

initial begin
clk = 1'b0;
reset = 1'b1;
#10 reset = 1'b0;
adr1 = 0;
adr2 = 0;

#10;
adr1 = 3'b000;
adr2 = 3'b001;
#100 reset = 1'b1;
#10 reset = 1'b0;

#10;
adr1 = 3'b011;
adr2 = 3'b100;
#100 reset = 1'b1;
#10 reset = 1'b0;

#10;
adr1 = 3'b100;
adr2 = 3'b111;
#100 reset = 1'b1;
#10 reset = 1'b0;


#20
$stop;

end

always #10 clk = ~clk;


endmodule
