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
`define ALU 3'b000
`define Memory 3'b001
`define PC8 3'b010
`define MD 3'b011
`define CP0 3'b100
module W_RegWriteSelMux(
	input [2:0] W_RegWriteSel,
	input [31:0] W_ALURe,
	input [31:0] W_LoadData,
	input [31:0] W_PC,
	input [31:0] W_MDData,
	input [31:0] W_CP0Out,
	output [31:0] W_RegWriteData
	);
	assign W_RegWriteData = (W_RegWriteSel == `ALU) ? W_ALURe :
								 (W_RegWriteSel == `Memory) ? W_LoadData :
								 (W_RegWriteSel == `PC8) ? W_PC + 8 :
								 (W_RegWriteSel == `MD) ? W_MDData :
								 (W_RegWriteSel == `CP0) ? W_CP0Out :
								 0;
endmodule
