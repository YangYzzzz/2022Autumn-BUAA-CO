`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:21:10 11/09/2022 
// Design Name: 
// Module Name:    E_ForwardALUAMux 
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
module E_ForwardALUAMux(
    input [31:0] E_RD1,
    input [31:0] W_ForwardALUA,
    input [31:0] M_ForwardALUA,
    output [31:0] E_TrueALUA,
    input [1:0] E_ForwardALUAMux_Sel
    );
	assign E_TrueALUA = (E_ForwardALUAMux_Sel == 2) ? M_ForwardALUA :
							  (E_ForwardALUAMux_Sel == 1) ? W_ForwardALUA :
							  (E_ForwardALUAMux_Sel == 0) ? E_RD1 :
							  0;

endmodule
