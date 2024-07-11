`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:06:49 10/25/2022 
// Design Name: 
// Module Name:    DATABASE 
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
module DATABASE(
    input [2:0] ALUSrc,
    input [2:0] ExtOp,
    input [2:0] ALUControl,
    input [2:0] RegWrite,
    input [2:0] MemWrite,
    input [2:0] RegDst,
    input [2:0] nPCSel,
    input [2:0] RegWriteSel,
	 input [2:0] DataExtOp,
    input clk,
    input reset,
	 output [5:0] Op,
	 output [5:0] Func
    );    //IMPLEMENT  wire
	 wire [31:0] newPC;
	 wire [31:0] PC;
	 wire [15:0] Imm16;
	 wire [25:0] Imm26;
	 wire [31:0] Imm32;
	 wire Zero, mark;
	 wire [31:0] Command;
	 wire [4:0] Rs;
	 wire [4:0] Rt;
	 wire [4:0] Rd;
	 wire [4:0] RegWriteAddr;
	 wire [31:0] ALURe;
	 wire [31:0] MemoryData;
	 wire [31:0] LoadData;
	 wire [31:0] RegWriteData;
	 wire [31:0] RD1;
	 wire [31:0] RD2;
	 wire [31:0] ALUB;
	PC uutPC(.clk(clk),.reset(reset),.newPC(newPC),.PC(PC));
	IM uutIM(.PC(PC),.Command(Command));
	NPC uutNPC(.Imm16(Imm16),.Imm26(Imm26),.PC(PC),.newPC(newPC),.nPCSel(nPCSel),.Grf(RD1),.Zero(Zero), .mark(mark));
	SPLITTER uutSplitter(.Command(Command),.Rs(Rs),.Rt(Rt),.Rd(Rd),.Imm16(Imm16),.Imm26(Imm26),.Op(Op),.Func(Func));
	RegDstMux uutRegDstMux(.Rt(Rt),.Rd(Rd),.RegDst(RegDst),.RegWriteAddr(RegWriteAddr));   //31 in it
	GRF uutGRF(.PC(PC),.clk(clk),.reset(reset),.A1(Rs),.A2(Rt),.A3(RegWriteAddr),.WD(RegWriteData),.RegWrite(RegWrite),.RD1(RD1),.RD2(RD2), .mark(mark));
	EXT uutEXT(.ExtOp(ExtOp),.Imm16(Imm16),.Imm32(Imm32));
	ALUSrcMux uutALUSrcMux(.ALUSrc(ALUSrc),.RD(RD2),.Imm32(Imm32),.ALUB(ALUB));
	ALU uutALU(.ALUA(RD1),.ALUB(ALUB),.ALUControl(ALUControl),.Zero(Zero),.ALURe(ALURe), .mark(mark));
	DM uutDM(.PC(PC),.MemWrite(MemWrite),.Addr(ALURe),.StoreData(RD2),.MemoryData(MemoryData),.clk(clk),.reset(reset));
	DataExt uutDataExt(.StoreAddr(ALURe), .MemoryData(MemoryData), .DataExtOp(DataExtOp), .LoadData(LoadData));
	RegWriteSelMux uutRegWriteSelMux(.RegWriteSel(RegWriteSel),.ALURe(ALURe),.LoadData(LoadData),.PC(PC),.RegWriteData(RegWriteData));
endmodule
