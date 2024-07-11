`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:07 11/03/2022 
// Design Name: 
// Module Name:    E_ForwardALUBMux 
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
module E_ForwardALUBMux(
    input [31:0] E_RD2,
    input [31:0] W_ForwardALUB,
    input [31:0] M_ForwardALUB,
    output [31:0] E_TrueRD2,
    input [1:0] E_ForwardALUBMux_Sel
    );
	assign E_TrueRD2 = (E_ForwardALUBMux_Sel == 2) ? M_ForwardALUB :
							 (E_ForwardALUBMux_Sel == 1) ? W_ForwardALUB :
							 (E_ForwardALUBMux_Sel == 0) ? E_RD2 :
							 0;
 
endmodule
