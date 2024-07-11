`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:26 11/09/2022 
// Design Name: 
// Module Name:    E_ALUSrcMux 
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
module E_ALUSrcMux(
	input [31:0] E_RD2,
	input [31:0] E_Imm32,
	input [1:0] E_ALUSrc,
	input [4:0] E_Rt,
	output [31:0] E_ALUB
	);
	wire [31:0] rt31 = {27'b0, E_Rt};
	assign E_ALUB = (E_ALUSrc == 0) ? E_RD2 :
					  (E_ALUSrc == 1) ? E_Imm32 :
					  (E_ALUSrc == 2) ? rt31 :
					  0;
endmodule
