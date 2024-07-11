`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:15:15 11/03/2022 
// Design Name: 
// Module Name:    W_RegWriteSelMux 
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
module W_RegWriteSelMux(
	input [2:0] W_RegWriteSel,
	input [31:0] W_ALURe,
	input [31:0] W_LoadData,
	input [31:0] W_PC8,
	output [31:0] W_RegWriteData
	);
	assign W_RegWriteData = (W_RegWriteSel == 0) ? W_ALURe :
								 (W_RegWriteSel == 1) ? W_LoadData :
								 (W_RegWriteSel == 2) ? W_PC8 :
								 0;
endmodule
