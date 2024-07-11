`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:07 11/03/2022 
// Design Name: 
// Module Name:    E_RegDstMux 
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
module E_RegDstMux(
	input [2:0] E_RegDst,
	input [4:0] E_Rt,
	input [4:0] E_Rd,
	output [4:0] E_A3,
	input E_Flag,
	input E_FlagALU
    );
	assign E_A3 =  ((E_RegDst == 3 && E_Flag == 0) || (E_RegDst == 4 && E_FlagALU == 0))? 0 :   //regdst == 3 condition jump and link; regdst == 4 condition alu
						(E_RegDst == 0)? E_Rt :
						(E_RegDst == 1) ? E_Rd :
						(E_RegDst == 2 || (E_RegDst == 3 && E_Flag == 1)) ? 31 : 0;
endmodule
