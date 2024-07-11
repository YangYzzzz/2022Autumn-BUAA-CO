`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:53 11/03/2022 
// Design Name: 
// Module Name:    D_ForwardRD2Mux 
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
module D_ForwardRD2Mux(
    input [31:0] D_V2,
    input [31:0] M_ForwardRD2,
    input [31:0] W_ForwardRD2,
    output [31:0] D_TrueRD2,
    input [1:0] D_ForwardRD2Mux_Sel
    );
		assign D_TrueRD2 = (D_ForwardRD2Mux_Sel == 2) ? M_ForwardRD2 :
						    (D_ForwardRD2Mux_Sel == 1) ? W_ForwardRD2 :
						    (D_ForwardRD2Mux_Sel == 0) ? D_V2 :
							 0;

endmodule
