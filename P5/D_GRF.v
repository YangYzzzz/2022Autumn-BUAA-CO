`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:43:46 11/02/2022 
// Design Name: 
// Module Name:    D_GRF 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module D_GRF(
    input clk,
	 input reset,
	 input [4:0] D_A1,
    input [4:0] D_A2,
    input [31:0] W_RegWriteData,
    input [2:0] W_RegWrite,
    input [4:0] W_A3,
    output [31:0] D_V1,
    output [31:0] D_V2,
	 input [31:0] W_PC8
    );
	reg[31:0] register[0:31];
	integer i;
	initial begin 
			for(i = 0; i < 32; i = i + 1) begin
					register[i] <= 0;
		end
	end
			always@(posedge clk) begin
					if(reset == 1) begin
							for(i = 0; i < 32; i = i + 1) begin
									register[i] <= 0;
							end
					end
					else if((W_RegWrite == 1) && W_A3 != 0) begin
									$display("%d@%h: $%d <= %h", $time, W_PC8 - 8, W_A3, W_RegWriteData);
									register[W_A3] <= W_RegWriteData;
					end
			end
	assign D_V1 = register[D_A1];
	assign D_V2 = register[D_A2];
endmodule
