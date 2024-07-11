`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:24:24 11/02/2022 
// Design Name: 
// Module Name:    D_NPC 
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
`define ADD4 2'b00
`define BEQ  2'b01
`define Jal  2'b10
`define Jr   2'b11
module D_NPC(
    input [15:0] D_Imm16,
    input [25:0] D_Imm26,
	 input [31:0] D_RD1,
    input [31:0] D_PC4,
	 input [31:0] F_PC,
    output [31:0] F_newPC,
    input [2:0] D_nPCSel,
	 input D_Zero,
	 input D_Flag
    );
	 wire[31:0] D_BEQ = D_PC4 + ({{16{D_Imm16[15]}},D_Imm16} << 2);
	 wire[31:0] D_JAL = {D_PC4[31:28],D_Imm26,2'b0};
	 wire[31:0] D_JR = D_RD1;
	 assign F_newPC = ((D_nPCSel == `BEQ && D_Zero == 1) || (D_nPCSel == 4 && D_Flag == 1)) ? D_BEQ :
						(D_nPCSel == `Jal) ? D_JAL :
						(D_nPCSel == `Jr)  ? D_JR :
						(F_PC + 4);   //ADD4
endmodule

