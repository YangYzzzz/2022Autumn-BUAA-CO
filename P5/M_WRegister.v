`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:10 11/03/2022 
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
    input [31:0] M_PC8,
    input [2:0] M_RegWrite,
    input [2:0] M_RegWriteSel,
    input [31:0] M_LoadData,
    input [31:0] M_ALURe,
    input [4:0] M_A3,
    input clk,
    input reset,
    output [31:0] W_PC8,
    output [2:0] W_RegWrite,
    output [2:0] W_RegWriteSel,
    output [31:0] W_LoadData,
    output [31:0] W_ALURe,
    output [4:0] W_A3
    );
	reg[31:0] pc8, loaddata, alure;
	reg[4:0] a3;
	reg[2:0] regwritesel, regwrite;
	assign W_PC8 = pc8;
	assign W_LoadData = loaddata;
	assign W_ALURe = alure;
	assign W_A3 = a3;
	assign W_RegWriteSel = regwritesel;
	assign W_RegWrite = regwrite;
	always@(posedge clk) begin
			if(reset == 1) begin
					pc8 <= 0;
					loaddata <= 0;
					alure <= 0;
					a3 <= 0;
					regwritesel <= 0;
					regwrite <= 0;
			end
			else begin
					pc8 <= M_PC8;
					loaddata <= M_LoadData;
					alure <= M_ALURe;
					a3 <= M_A3;
					regwritesel <= M_RegWriteSel;
					regwrite <= M_RegWrite;
			end
	end
endmodule
