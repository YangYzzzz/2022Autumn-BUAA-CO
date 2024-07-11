`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:19:32 10/24/2022 
// Design Name: 
// Module Name:    ALU 
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

module ALU(
    input [31:0] ALUA,
    input [31:0] ALUB,
    input [2:0] ALUControl,
    output [31:0] ALURe,
	 output Zero,
	 output mark
    );
	
	 assign mark = (ALUA != 0 && ALUControl == 3) ? 1 : 0;
	assign ALURe =	(ALUControl == `ADD) ? ALUA + ALUB :
						(ALUControl == `SUB) ? ALUA - ALUB :
						(ALUControl == `OR)  ? ALUA | ALUB :
						0;
	assign Zero = (ALURe == 0) ? 1 : 0;
endmodule
