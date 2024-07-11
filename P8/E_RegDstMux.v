`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:44 11/09/2022 
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
	input [1:0] E_RegDst,
	input [4:0] E_Rt,
	input [4:0] E_Rd,
	output [4:0] E_A3
    );
	assign E_A3 = (E_RegDst == 0) ? E_Rt :
								 (E_RegDst == 1) ? E_Rd :
								 (E_RegDst == 2) ? 5'd31 :
								 5'd0;
endmodule
