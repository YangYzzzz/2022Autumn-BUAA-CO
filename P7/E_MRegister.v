`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:20 11/09/2022 
// Design Name: 
// Module Name:    E_MRegister 
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
module E_MRegister(
    input [31:0] E_PC,
    input [1:0] E_MemWrite,
    input E_RegWrite,
    input [1:0] E_Tnew,
    input [2:0] E_RegWriteSel,
	 input [2:0] E_DataExtOp,
    input [31:0] E_ALURe,
    input [31:0] E_RD2,
    input [4:0] E_Rt,
    input [4:0] E_A3,
    output [31:0] M_PC,
    output [1:0] M_MemWrite,
    output M_RegWrite,
    output [2:0] M_RegWriteSel,
	 output [2:0] M_DataExtOp,
    output [1:0] M_Tnew,
    output [31:0] M_ALURe,
    output [31:0] M_RD2,
    output [4:0] M_Rt,
    output [4:0] M_A3,
	 input [31:0] E_MDData,
	 output [31:0] M_MDData,
	 input [4:0] E_ExcCode,
	 output [4:0] M_ExcCode,
	 input [4:0] E_Rd,
	 output [4:0] M_Rd,
	 input E_EXLClr,
	 output M_EXLClr,
	 input [31:0] EPCOut,
	 input E_BD,
	 output M_BD,
	 input E_CP0Write,
	 output M_CP0Write,
	 input Req,
    input clk,
    input reset
    );
	reg[31:0] pc,alure,rd2,mddata;
	reg[4:0] rt,a3, exccode,rd;
	reg[1:0] tnew, memwrite;
	reg[2:0] dataextop, regwritesel;
	reg regwrite, bd, exlclr, cp0write;
	assign M_CP0Write = cp0write;
	assign M_EXLClr = exlclr;
	assign M_BD = bd;
	assign M_Rd = rd;
	assign M_ExcCode = exccode;
	assign M_MDData = mddata;
	assign M_DataExtOp = dataextop;
	assign M_PC = pc;
	assign M_MemWrite = memwrite;
	assign M_RegWrite = regwrite;
	assign M_RegWriteSel = regwritesel;
	assign M_Tnew = tnew;
	assign M_ALURe = alure;
	assign M_RD2 = rd2;
	assign M_Rt = rt;
	assign M_A3 = a3;
	always@(posedge clk) begin
			if(reset == 1) begin
					pc <= 32'h00003000;
					memwrite <= 0;
					regwrite <= 0;
					regwritesel <= 0;
					dataextop <= 0;
					tnew <= 0;
					alure <= 0;
					rd2 <= 0;
					rt <= 0;
					rd <= 0;
					a3 <= 0;
					mddata <= 0;
					exccode <= 0;
					bd <= 0;
					exlclr <= 0;
					cp0write <= 0;
			end
			else if(Req == 1) begin
					pc <= 32'h00004180;
					memwrite <= 0;
					regwrite <= 0;
					regwritesel <= 0;
					dataextop <= 0;
					tnew <= 0;
					alure <= 0;
					rd2 <= 0;
					rt <= 0;
					rd <= 0;
					a3 <= 0;
					mddata <= 0;
					exccode <= 0;
					bd <= 0;
					exlclr <= 0;
					cp0write <= 0;
			end
			else if(M_EXLClr == 1) begin
					pc <= EPCOut;
					memwrite <= 0;
					regwrite <= 0;
					regwritesel <= 0;
					dataextop <= 0;
					tnew <= 0;
					alure <= 0;
					rd2 <= 0;
					rt <= 0;
					rd <= 0;
					a3 <= 0;
					mddata <= 0;
					exccode <= 0;
					bd <= 0;
					exlclr <= 0;
					cp0write <= 0;
			end
			else begin
					pc <= E_PC;
					memwrite <= E_MemWrite;
					regwrite <= E_RegWrite;
					regwritesel <= E_RegWriteSel;
					dataextop <= E_DataExtOp;
					alure <= E_ALURe;
					rd2 <= E_RD2;
					rt <= E_Rt;
					a3 <= E_A3;
					mddata <= E_MDData;
					exccode <= E_ExcCode;
					rd <= E_Rd;
					bd <= E_BD;
					cp0write <= E_CP0Write;
					if(E_Tnew == 0) begin
							tnew <= 0;
					end
					else begin
							tnew <= E_Tnew - 1;  //-1
					end
					exlclr <= E_EXLClr;
			end
	end
endmodule
