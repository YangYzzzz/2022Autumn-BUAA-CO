`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:37 11/09/2022 
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
    input W_RegWrite,
    input [4:0] W_A3,
    output [31:0] D_V1,
    output [31:0] D_V2
    );
	reg[31:0] register[0:31];
	integer i;
	always@(posedge clk) begin
			if(reset == 1) begin
					for(i = 0; i < 32; i = i + 1) begin
							register[i] <= 0;
					end
			end
			else if(W_RegWrite == 1 && W_A3 != 0) begin
							register[W_A3] <= W_RegWriteData;
			end
	end
	assign D_V1 = register[D_A1];
	assign D_V2 = register[D_A2];
endmodule