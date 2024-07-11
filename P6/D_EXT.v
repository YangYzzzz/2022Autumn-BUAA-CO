`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:21:35 11/09/2022 
// Design Name: 
// Module Name:    D_EXT 
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
`define ZeroExt 2'b00
`define SignExt 2'b01
`define LuiExt  2'b10

module D_EXT(
    input [15:0] D_Imm16,
    input [3:0] D_ExtOp,
    output [31:0] D_Imm32
    );
	assign D_Imm32 =  (D_ExtOp == `SignExt)? {{16{D_Imm16[15]}},D_Imm16} :
					  (D_ExtOp == `ZeroExt)? {16'b0,D_Imm16} :
					  (D_ExtOp == `LuiExt)? {D_Imm16,16'b0} :
					  0;
endmodule
