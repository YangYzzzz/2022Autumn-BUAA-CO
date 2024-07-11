`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:18:59 11/09/2022 
// Design Name: 
// Module Name:    M_ForwardStoreDataMux 
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
module M_ForwardStoreDataMux(
    input [31:0] W_ForwardStoreData,
    input [31:0] M_RD2,
    output [31:0] M_TrueRD2,
    input M_ForwardStoreDataMux_Sel
    );
	assign M_TrueRD2 = (M_ForwardStoreDataMux_Sel == 1) ? W_ForwardStoreData :
									 (M_ForwardStoreDataMux_Sel == 0) ? M_RD2 :
									 0;
endmodule
