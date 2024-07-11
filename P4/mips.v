`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:59 10/25/2022 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );
	 wire [5:0] Op;
    wire [5:0] Func;
    wire [2:0] MemWrite;
    wire [2:0] RegWriteSel;
    wire [2:0] ALUSrc;
    wire [2:0] nPCSel;
    wire [2:0] RegDst;
    wire [2:0] RegWrite;
	 wire [2:0] ALUControl;
	 wire [2:0] ExtOp;
	 wire [2:0] DataExtOp;
	CU uutCU(.Op(Op),.Func(Func), .DataExtOp(DataExtOp), .MemWrite(MemWrite),.RegWrite(RegWrite),.RegWriteSel(RegWriteSel),
				.ALUSrc(ALUSrc),.nPCSel(nPCSel),.RegDst(RegDst),.ALUControl(ALUControl),.ExtOp(ExtOp));
	DATABASE uutDataBase(.clk(clk),.reset(reset),.Op(Op),.Func(Func), .DataExtOp(DataExtOp), .MemWrite(MemWrite),
								.RegWrite(RegWrite),.RegWriteSel(RegWriteSel),.ALUSrc(ALUSrc),.nPCSel(nPCSel),.RegDst(RegDst),.ALUControl(ALUControl),.ExtOp(ExtOp));
endmodule
