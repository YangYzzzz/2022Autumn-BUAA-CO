`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:21:52 11/09/2022 
// Design Name: 
// Module Name:    D_ERegister 
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
module D_ERegister(
	 input [31:0] D_PC,
	 output [31:0] E_PC,
    input [1:0] D_RegDst,
    input [1:0] D_ALUSrc,
    input [3:0] D_ALUControl,
	 input [2:0] D_DataExtOp,
    input [1:0] D_MemWrite,
    input [2:0] D_RegWriteSel,
    input D_RegWrite,
    input [1:0] D_Tnew,
    output [1:0] E_RegDst,
    output [1:0] E_ALUSrc,
    output [3:0] E_ALUControl,
	 output [2:0] E_DataExtOp,
    output [1:0] E_MemWrite,
    output [2:0] E_RegWriteSel,
    output [1:0] E_Tnew,
    output E_RegWrite,
    input [31:0] D_RD1,
    input [31:0] D_RD2,
    input [31:0] D_Imm32,
    input [4:0] D_Rs,
    input [4:0] D_Rt,
    input [4:0] D_Rd,
    output [31:0] E_RD1,
    output [31:0] E_RD2,
    output [31:0] E_Imm32,
    output [4:0] E_Rs,
    output [4:0] E_Rt,
    output [4:0] E_Rd,
	 input clk,
	 input reset,
	 input D_EStallReset,
	 input [2:0] D_MDControl,
	 output [2:0] E_MDControl,
	 input D_MDDataOp,
	 output E_MDDataOp,
	 input [4:0] D_ExcCode,
	 output [4:0] Raw_E_ExcCode,
	 input D_BD,
	 output E_BD,
	 input Req,
	 input EXLClr,
	 input [31:0] EPCOut,
	 input D_EXLClr,
	 output E_EXLClr,
	 input D_CP0Write,
	 output E_CP0Write
    );
	reg[31:0] rd1,rd2,imm32,pc;
	reg[4:0] rs,rt,rd,exccode;
	reg[1:0] regdst, alusrc,tnew, memwrite;
	reg[2:0] dataextop, mdcontrol, regwritesel;
	reg[3:0] alucontrol;
	reg regwrite, mddataop, bd, exlclr, cp0write;
	assign E_CP0Write = cp0write;
	assign E_EXLClr = exlclr;
	assign E_BD = bd;
	assign Raw_E_ExcCode = exccode;
	assign E_MDControl = mdcontrol;
	assign E_MDDataOp = mddataop;
	assign E_DataExtOp = dataextop;
	assign E_RD1 = rd1;
	assign E_RD2 = rd2;
	assign E_Imm32 = imm32;
	assign E_Rs = rs;
	assign E_Rt = rt;
	assign E_Rd = rd;
	assign E_RegDst = regdst;
	assign E_ALUSrc = alusrc;
	assign E_RegWriteSel = regwritesel;
	assign E_Tnew = tnew;
	assign E_ALUControl = alucontrol;
	assign E_MemWrite = memwrite;
	assign E_RegWrite = regwrite;
	assign E_PC = pc;
	always@(posedge clk) begin
			if(reset == 1) begin
					rd1 <= 0;
					rd2 <= 0;
					imm32 <= 0;
					rs <= 0;
					rt <= 0;
					rd <= 0;
					regdst <= 0;
					alusrc <= 0;
					regwritesel <= 0;
					dataextop <= 0;
					tnew <= 0;
					alucontrol <= 0;
					memwrite <= 0;
					regwrite <= 0;
					pc <= 32'h00003000;
					mddataop <= 0;
					mdcontrol <= 0;
					exccode <= 0;
					bd <= 0;
					exlclr <= 0;
					cp0write <= 0;
			end
			else if(Req == 1) begin
					rd1 <= 0;
					rd2 <= 0;
					imm32 <= 0;
					rs <= 0;
					rt <= 0;
					rd <= 0;
					regdst <= 0;
					alusrc <= 0;
					regwritesel <= 0;
					dataextop <= 0;
					tnew <= 0;
					alucontrol <= 0;
					memwrite <= 0;
					regwrite <= 0;
					pc <= 32'h00004180;
					mddataop <= 0;
					mdcontrol <= 0;
					exccode <= 0;
					bd <= 0;
					exlclr <= 0;
					cp0write <= 0;
			end
			else if(EXLClr == 1) begin
					rd1 <= 0;
					rd2 <= 0;
					imm32 <= 0;
					rs <= 0;
					rt <= 0;
					rd <= 0;
					regdst <= 0;
					alusrc <= 0;
					regwritesel <= 0;
					dataextop <= 0;
					tnew <= 0;
					alucontrol <= 0;
					memwrite <= 0;
					regwrite <= 0;
					pc <= EPCOut;
					mddataop <= 0;
					mdcontrol <= 0;
					exccode <= 0;
					bd <= 0;
					exlclr <= 0;
					cp0write <= 0;
			end
			else if (D_EStallReset == 1) begin
					rd1 <= 0;
					rd2 <= 0;
					imm32 <= 0;
					rs <= 0;
					rt <= 0;
					rd <= 0;
					regdst <= 0;
					alusrc <= 0;
					regwritesel <= 0;
					dataextop <= 0;
					tnew <= 0;
					alucontrol <= 0;
					memwrite <= 0;
					regwrite <= 0;
					pc <= D_PC;
					mddataop <= 0;
					mdcontrol <= 0;
					exccode <= 0;
					bd <= D_BD;
					exlclr <= 0;
					cp0write <= 0;
			end
			else begin
					rd1 <= D_RD1;
					rd2 <= D_RD2;
					imm32 <= D_Imm32;
					rs <= D_Rs;
					rt <= D_Rt;
					rd <= D_Rd;
					regdst <= D_RegDst;
					alusrc <= D_ALUSrc;
					regwritesel <= D_RegWriteSel;
					tnew <= D_Tnew;
					alucontrol <= D_ALUControl;
					dataextop <= D_DataExtOp;
					memwrite <= D_MemWrite;
					regwrite <= D_RegWrite;
					pc <= D_PC;
					mddataop <= D_MDDataOp;
					mdcontrol <= D_MDControl;
					exccode <= D_ExcCode;
					exlclr <= D_EXLClr;
					bd <= D_BD;
					cp0write <= D_CP0Write;
			end
	end
endmodule

