`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:24:44 10/25/2022 
// Design Name: 
// Module Name:    SPLITTER 
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
module SPLITTER(
    input [31:0] Command,
    output [4:0] Rs,
    output [4:0] Rt,
    output [4:0] Rd,
    output [5:0] Op,
    output [5:0] Func,
    output [15:0] Imm16,
    output [25:0] Imm26
    );
	assign Op = Command[31:26];
	assign Imm26 = Command[25:0];
	assign Rs = Command[25:21];
	assign Rt = Command[20:16];
	assign Rd = Command[15:11];
	assign Func = Command[5:0];
	assign Imm16 = Command[15:0];
endmodule
