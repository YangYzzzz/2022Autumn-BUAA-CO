`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:29:22 11/03/2022 
// Design Name: 
// Module Name:    E_ALU 
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
`define ADD 3'b000
`define SUB 3'b001
`define OR  3'b010
`define SLL 3'b011
module E_ALU(
    input [31:0] E_ALUA,
    input [31:0] E_ALUB,
    input [2:0] E_ALUControl,
    output [31:0] E_ALURe,
	 output E_FlagALU
    );
	 wire [4:0] shift = E_ALUB[4:0];
	assign E_ALURe = (E_ALUControl == `ADD) ? E_ALUA + E_ALUB :
						(E_ALUControl == `SUB) ? E_ALUA - E_ALUB :
						(E_ALUControl == `OR) ? E_ALUA | E_ALUB :
						(E_ALUControl == `SLL) ? E_ALUA << shift :
						0;
	assign E_FlagALU = 0;  //with spcial ALUControl
endmodule
