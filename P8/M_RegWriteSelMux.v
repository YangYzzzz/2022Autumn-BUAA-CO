`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:18:02 11/09/2022 
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
    input [31:0] M_PC,
	 input [31:0] M_MDData,
    input [2:0] M_RegWriteSel,
    output [31:0] M_ForwardData
    );
	assign M_ForwardData = (M_RegWriteSel == 3) ? M_MDData :
								  (M_RegWriteSel == 2) ? M_PC + 8 :
								  M_ALURe;
endmodule
