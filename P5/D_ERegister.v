`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:21:00 11/03/2022 
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
	 input [31:0] D_PC4,
	 output [31:0] E_PC8,
    input [2:0] D_RegDst,
    input [2:0] D_ALUSrc,
    input [2:0] D_ALUControl,
    input [2:0] D_MemWrite,
    input [2:0] D_RegWriteSel,
    input [2:0] D_RegWrite,
    input [1:0] D_Tnew,
    output [2:0] E_RegDst,
    output [2:0] E_ALUSrc,
    output [2:0] E_ALUControl,
    output [2:0] E_MemWrite,
    output [2:0] E_RegWriteSel,
    output [1:0] E_Tnew,
    output [2:0] E_RegWrite,
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
	 input [2:0] D_DataExtOp,
	 output [2:0] E_DataExtOp,
	 input D_Flag,
	 output E_Flag,
	 input D_Check,
	 output E_Check,
	 input clk,
	 input reset,
	 input D_EStallReset
    );
	reg[31:0] rd1,rd2,imm32,pc8;
	reg[4:0] rs,rt,rd;
	reg[1:0] tnew;
	reg[2:0] alucontrol, regdst, alusrc, regwritesel, memwrite, regwrite, dataextop;
	reg flag, check;
	assign E_Check = check;
	assign E_Flag = flag;
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
	assign E_PC8 = pc8;
	always@(posedge clk) begin
			if((reset == 1) || (D_EStallReset == 1)) begin
					rd1 <= 0;
					rd2 <= 0;
					imm32 <= 0;
					rs <= 0;
					rt <= 0;
					rd <= 0;
					regdst <= 0;
					alusrc <= 0;
					regwritesel <= 0;
					tnew <= 0;
					alucontrol <= 0;
					memwrite <= 0;
					regwrite <= 0;
					pc8 <= 0;
					dataextop <= 0;
					flag <= 0;
					check <= 0;
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
					memwrite <= D_MemWrite;
					regwrite <= D_RegWrite;
					pc8 <= D_PC4 + 4;
					dataextop <= D_DataExtOp;
					flag <= D_Flag;
					check <= D_Check;
			end
	end
endmodule
