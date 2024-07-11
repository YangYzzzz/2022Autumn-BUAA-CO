`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:29:13 11/09/2022 
// Design Name: 
// Module Name:    M_ByteenExt 
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
`define SW 2'b01
`define SH 2'b10
`define SB 2'b11
module M_ByteenExt(
    output [3:0] M_Byteen,
    input [31:0] M_StoreAddr, 
	 input [31:0] M_TrueStoreData,
	 output [31:0] M_TransformStoreData,
    input [3:0] M_MemWrite  //sw 1; sh 2; sb 3
    );
	assign M_Byteen = (M_MemWrite == `SW) ? 4'b1111 :
							(M_MemWrite == `SH && M_StoreAddr[1] == 0) ? 4'b0011 :
							(M_MemWrite == `SH && M_StoreAddr[1] == 1) ? 4'b1100 :
							(M_MemWrite == `SB && M_StoreAddr[1:0] == 0) ? 4'b0001 :
							(M_MemWrite == `SB && M_StoreAddr[1:0] == 1) ? 4'b0010 :
							(M_MemWrite == `SB && M_StoreAddr[1:0] == 2) ? 4'b0100 :
							(M_MemWrite == `SB && M_StoreAddr[1:0] == 3) ? 4'b1000 :
							0;
	assign M_TransformStoreData = (M_Byteen == 4'b1111) ? M_TrueStoreData :
											(M_Byteen == 4'b0011) ? {16'b0, M_TrueStoreData[15:0]} :
											(M_Byteen == 4'b1100) ? {M_TrueStoreData[15:0], 16'b0} :
											(M_Byteen == 4'b0001) ? {24'b0, M_TrueStoreData[7:0]} :
											(M_Byteen == 4'b0010) ? {16'b0, M_TrueStoreData[7:0], 8'b0} :
											(M_Byteen == 4'b0100) ? {8'b0, M_TrueStoreData[7:0], 16'b0} :
											(M_Byteen == 4'b1000) ? {M_TrueStoreData[7:0], 24'b0} :
											0;
endmodule
