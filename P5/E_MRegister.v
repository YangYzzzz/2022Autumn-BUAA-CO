`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:52:22 11/03/2022 
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
    input [31:0] E_PC8,
    input [2:0] E_MemWrite,
    input [2:0] E_RegWrite,
    input [1:0] E_Tnew,
    input [2:0] E_RegWriteSel,
    input [31:0] E_ALURe,
    input [31:0] E_RD2,
    input [4:0] E_Rt,
    input [4:0] E_A3,
    output [31:0] M_PC8,
    output [2:0] M_MemWrite,
    output [2:0] M_RegWrite,
    output [2:0] M_RegWriteSel,
    output [1:0] M_Tnew,
    output [31:0] M_ALURe,
    output [31:0] M_RD2,
    output [4:0] M_Rt,
    output [4:0] M_A3,
	 input [2:0] E_DataExtOp,
	 output [2:0] M_DataExtOp,
	 input E_Check,
	 output M_Check,
    input clk,
    input reset
    );
	reg[31:0] pc8,alure,rd2;
	reg[4:0] rt,a3;
	reg[1:0] tnew;
	reg[2:0] memwrite, regwrite, regwritesel, dataextop;
	reg check;
	assign M_Check = check;
	assign M_DataExtOp = dataextop;
	assign M_PC8 = pc8;
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
					pc8 <= 0;
					memwrite <= 0;
					regwrite <= 0;
					regwritesel <= 0;
					tnew <= 0;
					alure <= 0;
					rd2 <= 0;
					rt <= 0;
					a3 <= 0;
					dataextop <= 0;
					check <= 0;
			end
			else begin
					pc8 <= E_PC8;
					memwrite <= E_MemWrite;
					regwrite <= E_RegWrite;
					regwritesel <= E_RegWriteSel;
					alure <= E_ALURe;
					rd2 <= E_RD2;
					rt <= E_Rt;
					a3 <= E_A3;
					dataextop <= E_DataExtOp;
					check <= E_Check;
					if(E_Tnew == 0) begin
							tnew <= 0;
					end
					else begin
							tnew <= E_Tnew - 1;  //-1
					end
			end
	end
endmodule
