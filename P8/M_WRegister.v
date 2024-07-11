`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:37 11/09/2022 
// Design Name: 
// Module Name:    M_WRegister 
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
module M_WRegister(
    input [31:0] M_PC,
    input M_RegWrite,
    input [2:0] M_RegWriteSel,
    input [31:0] M_MemoryData,
    input [31:0] M_ALURe,
    input [4:0] M_A3,
    input clk,
    input reset,
    output [31:0] W_PC,
    output W_RegWrite,
    output [2:0] W_RegWriteSel,
    output [31:0] W_MemoryData,
    output [31:0] W_ALURe,
    output [4:0] W_A3,
	 input [31:0] M_MDData,
	 output [31:0] W_MDData,
	 input [31:0] M_CP0Out,
	 output [31:0] W_CP0Out,
	 input Req,
	 input [2:0] M_DataExtOp,
	 output [2:0] W_DataExtOp
    );
	reg[31:0] pc, alure, mddata, cp0out;
	reg[4:0] a3;
	reg[2:0] regwritesel, dataextop;
	reg regwrite;
	assign W_DataExtOp = dataextop;
	assign W_CP0Out = cp0out;
	assign W_MDData = mddata;
	assign W_PC = pc;
	assign W_ALURe = alure;
	assign W_A3 = a3;
	assign W_RegWriteSel = regwritesel;
	assign W_RegWrite = regwrite;
	always@(posedge clk) begin
			if(reset == 1) begin
					pc <= 32'h00003000;
					alure <= 0;
					a3 <= 0;
					regwritesel <= 0;
					regwrite <= 0;
					mddata <= 0;
					cp0out <= 0;
					dataextop <= 0;
			end
			else if(Req == 1) begin
					pc <= 32'h00004180;
					alure <= 0;
					a3 <= 0;
					regwritesel <= 0;
					regwrite <= 0;
					mddata <= 0;
					cp0out <= 0;
					dataextop <= 0;
			end
			else begin
					pc <= M_PC;
					alure <= M_ALURe;
					a3 <= M_A3;
					regwritesel <= M_RegWriteSel;
					regwrite <= M_RegWrite;
					mddata <= M_MDData;
					cp0out <= M_CP0Out;
					dataextop <= M_DataExtOp;
			end
	end
	assign W_MemoryData = M_MemoryData;
endmodule
