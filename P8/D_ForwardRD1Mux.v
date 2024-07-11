`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:21 11/09/2022 
// Design Name: 
// Module Name:    D_ForwardRD1Mux 
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
module D_ForwardRD1Mux(
    input [31:0] D_V1,
    input [31:0] M_ForwardRD1,
    input [31:0] W_ForwardRD1,
    output [31:0] D_TrueRD1,
    input [1:0] D_ForwardRD1Mux_Sel
    );
	assign D_TrueRD1 = (D_ForwardRD1Mux_Sel == 2) ? M_ForwardRD1 :
						    (D_ForwardRD1Mux_Sel == 1) ? W_ForwardRD1 :
						    (D_ForwardRD1Mux_Sel == 0) ? D_V1 :
							 0;
endmodule
