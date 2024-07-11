`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:49:52 11/04/2022 
// Design Name: 
// Module Name:    M_RegWriteSelMux 
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
module M_RegWriteSelMux(
    input [31:0] M_ALURe,
    input [31:0] M_PC8,
    input [2:0] M_RegWriteSel,
    output [31:0] M_ForwardData
    );
	assign M_ForwardData = (M_RegWriteSel == 2) ? M_PC8 :
								  M_ALURe;
endmodule
