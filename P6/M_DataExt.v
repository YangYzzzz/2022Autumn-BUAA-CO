`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:12:12 11/09/2022 
// Design Name: 
// Module Name:    M_DataExt 
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
`define LW 3'b0
`define LH 3'b100
`define LB 3'b010
module M_DataExt(
    input [31:0] M_StoreAddr,
    input [31:0] M_MemoryData,
    input [3:0] M_DataExtOp,
    output [31:0] M_LoadData
    );
	assign M_LoadData = (M_DataExtOp == `LW) ? M_MemoryData :
							  (M_DataExtOp == `LH && M_StoreAddr[1] == 0) ? {{16{M_MemoryData[15]}}, M_MemoryData[15:0]} :
							  (M_DataExtOp == `LH && M_StoreAddr[1] == 1) ? {{16{M_MemoryData[31]}}, M_MemoryData[31:16]} :
							  (M_DataExtOp == 3 && M_StoreAddr[1] == 0) ? {16'b0, M_MemoryData[15:0]} :
							  (M_DataExtOp == 3 && M_StoreAddr[1] == 1) ? {16'b0, M_MemoryData[31:16]} :
							  (M_DataExtOp == `LB && M_StoreAddr[1:0] == 0) ? {{24{M_MemoryData[7]}}, M_MemoryData[7:0]} :
							  (M_DataExtOp == `LB && M_StoreAddr[1:0] == 1) ? {{24{M_MemoryData[15]}}, M_MemoryData[15:8]} :
							  (M_DataExtOp == `LB && M_StoreAddr[1:0] == 2) ? {{24{M_MemoryData[23]}}, M_MemoryData[23:16]} :
							  (M_DataExtOp == `LB && M_StoreAddr[1:0] == 3) ? {{24{M_MemoryData[31]}}, M_MemoryData[31:24]} :
							  (M_DataExtOp == 1 && M_StoreAddr[1:0] == 0) ? {24'b0, M_MemoryData[7:0]} :
							  (M_DataExtOp == 1 && M_StoreAddr[1:0] == 1) ? {24'b0, M_MemoryData[15:8]} :
							  (M_DataExtOp == 1 && M_StoreAddr[1:0] == 2) ? {24'b0, M_MemoryData[23:16]} :
							  (M_DataExtOp == 1 && M_StoreAddr[1:0] == 3) ? {24'b0, M_MemoryData[31:24]} :
							  0;
endmodule
