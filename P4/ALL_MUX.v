`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:37:46 10/25/2022 
// Design Name: 
// Module Name:    ALL_MUX 
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
`define RT 2'b00
`define RD 2'b01
`define GRF31 2'b10
module RegDstMux(
	input [2:0] RegDst,
	input [4:0] Rt,
	input [4:0] Rd,
	output [4:0] RegWriteAddr
    );
	assign RegWriteAddr = (RegDst == 0) ? Rt :
								 (RegDst == 1) ? Rd :
								 (RegDst == 2) ? 31 :
								 0;
endmodule

module ALUSrcMux(
	input [31:0] RD,
	input [31:0] Imm32,
	input [2:0] ALUSrc,
	output [31:0] ALUB
	);
	assign ALUB = (ALUSrc == 0) ? RD :
					  (ALUSrc == 1) ? Imm32 :
					  0;
endmodule

module RegWriteSelMux(
	input [2:0] RegWriteSel,
	input [31:0] ALURe,
	input [31:0] LoadData,
	input [31:0] PC,
	output [31:0] RegWriteData
	);
	assign RegWriteData = (RegWriteSel == 0) ? ALURe :
								 (RegWriteSel == 1) ? LoadData :
								 (RegWriteSel == 2) ? (PC + 4) :
								 0;
endmodule
