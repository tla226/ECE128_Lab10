`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 02:56:25 PM
// Design Name: 
// Module Name: Lab10_Q3_CU
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




module Lab10_Q3_CU( 

input clk, reset,
  input [2:0] adr1,
  input [2:0] adr2,
  output reg w_rf,
  output reg [2:0] adr,
  output reg DA,SA,SB,
  output reg [2:0] st_out,
  //output reg done,
  output reg [2:0] w_ram
);

   
  
parameter S0_idle = 0 , S1_send_adr1 = 1 , S2_send_adr2 = 2 ,S3_multiply = 3 ,S4_write_ram = 4,S5_read_ram=5 ;
reg [2:0] PS,NS ;

    always@(posedge clk or posedge reset)
        begin
            if(reset)
                PS <= S0_idle;   
            else    
                PS <= NS ;
        end  


		  

    always@(*)
        begin 
            
            case(PS)
				S0_idle:begin
				NS = S1_send_adr1;
                                w_rf <=1'b1;
                                w_ram <=1'b1;
            st_out <= 3'b000;
				end
				
				S1_send_adr1:begin	
				w_rf <=1'b1;
				adr<=adr1;
				DA <=1'b0;
				SA <=1'b0;
				SB <=1'b1;
				st_out <= 3'b001;
				NS = S2_send_adr2;
				end
				
				S2_send_adr2:begin
				w_rf <=1'b1;
				adr<=adr2;
				NS = S3_multiply;
				DA <=1'b1;
				SA <=1'b0;
				SB <=1'b1;
            st_out <= 3'b010;
			   end
			
		                S3_multiply: begin
				NS = 	S4_write_ram;
                                st_out <= 3'b011;
				w_ram<=1;
			        end

                                S4_write_ram: begin
                                st_out <= 3'b100;
				NS = 	S5_read_ram;
				end
				
				S5_read_ram: begin
                                w_ram<=0;
                                //done <=1;
                                st_out <= 3'b101;
				if(!reset) begin
				NS = 	S5_read_ram;
				end
				else begin
				NS = S0_idle;
				end
				end
				endcase
				end
				
			

endmodule



