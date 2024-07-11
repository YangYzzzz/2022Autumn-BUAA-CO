`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:08:50 11/02/2022 
// Design Name: 
// Module Name:    D_Splitter 
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
module D_Splitter(
    input [31:0] D_Command,
    output [4:0] D_Rs,
    output [4:0] D_Rt,
    output [4:0] D_Rd,
    output [5:0] D_Op,
    output [5:0] D_Func,
    output [15:0] D_Imm16,
    output [25:0] D_Imm26
    );
	assign D_Op = D_Command[31:26];
	assign D_Imm26 = D_Command[25:0];
	assign D_Rs = D_Command[25:21];
	assign D_Rt = D_Command[20:16];
	assign D_Rd = D_Command[15:11];
	assign D_Func = D_Command[5:0];
	assign D_Imm16 = D_Command[15:0];
endmodule
