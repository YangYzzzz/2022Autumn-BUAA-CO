`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:28 11/09/2022 
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
`define ADD4 3'b000
`define BEQ  3'b001
`define JAL  3'b010
`define JR   3'b011
`define BNE  3'b100
module D_NPC(
    input [15:0] D_Imm16,
    input [25:0] D_Imm26,
	 input [31:0] D_RD1,
    input [31:0] D_PC,
	 input [31:0] F_PC,
    output [31:0] F_newPC,
    input [2:0] D_nPCSel,
	 input D_Zero
    );
	 wire[31:0] D_Branch; 
	 assign D_Branch = D_PC + 4 + ({{16{D_Imm16[15]}},D_Imm16} << 2);
	 wire[31:0] D_JAL;
	 assign D_JAL = {D_PC[31:28],D_Imm26,2'b0};
	 wire[31:0] D_JR;
	 assign D_JR = D_RD1;
	 assign F_newPC =  ((D_nPCSel == `BEQ && D_Zero == 1) || (D_nPCSel == `BNE && D_Zero != 1))  ? D_Branch :
						    (D_nPCSel == `JAL) ? D_JAL :
						    (D_nPCSel == `JR)  ? D_JR :
						    (F_PC + 4);   //ADD4
endmodule
