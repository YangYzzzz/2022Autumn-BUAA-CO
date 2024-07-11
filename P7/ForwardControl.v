`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:27:16 11/09/2022 
// Design Name: 
// Module Name:    ForwardControl 
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
module ForwardControl(
    output [1:0] D_ForwardRD1Mux_Sel,
    output [1:0] D_ForwardRD2Mux_Sel,
    output [1:0] E_ForwardALUAMux_Sel,
    output [1:0] E_ForwardALUBMux_Sel,
    output M_ForwardStoreDataMux_Sel,
    input [4:0] M_A3,
    input [4:0] W_A3,
    input M_RegWrite,
    input W_RegWrite,
    input [4:0] M_Rt,
    input [4:0] D_Rt,
    input [4:0] D_Rs,
    input [4:0] E_Rs,
    input [4:0] E_Rt,
    input [1:0] M_Tnew
    );
	assign D_ForwardRD1Mux_Sel = (D_Rs == M_A3 && M_A3 != 0 && M_RegWrite == 1 && M_Tnew == 0) ? 2 :
										  (D_Rs == W_A3 && W_A3 != 0 && W_RegWrite == 1) ? 1 :
										  0;
	assign D_ForwardRD2Mux_Sel = (D_Rt == M_A3 && M_A3 != 0 && M_RegWrite == 1 && M_Tnew == 0) ? 2 :
										  (D_Rt == W_A3 && W_A3 != 0 && W_RegWrite == 1) ? 1 :
										  0;
	assign E_ForwardALUAMux_Sel = (E_Rs == M_A3 && M_A3 != 0 && M_RegWrite == 1 && M_Tnew == 0) ? 2 :
										   (E_Rs == W_A3 && W_A3 != 0 && W_RegWrite == 1) ? 1 :
											0;
	assign E_ForwardALUBMux_Sel = (E_Rt == M_A3 && M_A3 != 0 && M_RegWrite == 1 && M_Tnew == 0) ? 2 :
											(E_Rt == W_A3 && W_A3 != 0 && W_RegWrite == 1) ? 1 :
											0;
	assign M_ForwardStoreDataMux_Sel = (M_Rt == W_A3 && W_A3 != 0 && W_RegWrite == 1) ? 1 :
											  0;
endmodule

