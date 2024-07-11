`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:13:45 11/09/2022 
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
	input [3:0] W_RegWriteSel,
	input [31:0] W_ALURe,
	input [31:0] W_LoadData,
	input [31:0] W_PC8,
	input [31:0] W_MDData,
	output [31:0] W_RegWriteData
	);
	assign W_RegWriteData = (W_RegWriteSel == 0) ? W_ALURe :
								 (W_RegWriteSel == 1) ? W_LoadData :
								 (W_RegWriteSel == 2) ? W_PC8 :
								 (W_RegWriteSel == 3) ? W_MDData :
								 0;
endmodule
