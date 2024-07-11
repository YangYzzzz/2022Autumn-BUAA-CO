`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:12:36 10/25/2022 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
    input [15:0] Imm16,
    input [25:0] Imm26,
	 input [31:0] Grf,
    input [2:0] nPCSel,
    input [31:0] PC,
	 input Zero,
    output [31:0] newPC,
	 input mark
    );
	 wire[31:0] output1 = PC + 4;
	 wire[31:0] output2 = PC + ({{16{Imm16[15]}},Imm16} << 2) + 4;
	 wire[31:0] output3 = {PC[31:28],Imm26,2'b0};
	 wire[31:0] output4 = Grf;
	assign newPC = ((nPCSel == `BEQ && Zero == 1) || (nPCSel == 4 && mark == 1)) ? output2 :
						(nPCSel == `Jal) ? output3 :
						(nPCSel == `Jr)  ? output4 :
						output1;   //ADD4
endmodule
