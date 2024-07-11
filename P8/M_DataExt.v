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
module W_DataExt(
    input [31:0] W_StoreAddr,
    input [31:0] W_MemoryData,
    input [2:0] W_DataExtOp,
    output [31:0] W_LoadData
    );
	assign W_LoadData = (W_DataExtOp == `LW) ? W_MemoryData :
							  (W_DataExtOp == `LH && W_StoreAddr[1] == 0) ? {{16{W_MemoryData[15]}}, W_MemoryData[15:0]} :
							  (W_DataExtOp == `LH && W_StoreAddr[1] == 1) ? {{16{W_MemoryData[31]}}, W_MemoryData[31:16]} :
							  (W_DataExtOp == 3 && W_StoreAddr[1] == 0) ? {16'b0, W_MemoryData[15:0]} :
							  (W_DataExtOp == 3 && W_StoreAddr[1] == 1) ? {16'b0, W_MemoryData[31:16]} :
							  (W_DataExtOp == `LB && W_StoreAddr[1:0] == 0) ? {{24{W_MemoryData[7]}}, W_MemoryData[7:0]} :
							  (W_DataExtOp == `LB && W_StoreAddr[1:0] == 1) ? {{24{W_MemoryData[15]}}, W_MemoryData[15:8]} :
							  (W_DataExtOp == `LB && W_StoreAddr[1:0] == 2) ? {{24{W_MemoryData[23]}}, W_MemoryData[23:16]} :
							  (W_DataExtOp == `LB && W_StoreAddr[1:0] == 3) ? {{24{W_MemoryData[31]}}, W_MemoryData[31:24]} :
							  (W_DataExtOp == 1 && W_StoreAddr[1:0] == 0) ? {24'b0, W_MemoryData[7:0]} :
							  (W_DataExtOp == 1 && W_StoreAddr[1:0] == 1) ? {24'b0, W_MemoryData[15:8]} :
							  (W_DataExtOp == 1 && W_StoreAddr[1:0] == 2) ? {24'b0, W_MemoryData[23:16]} :
							  (W_DataExtOp == 1 && W_StoreAddr[1:0] == 3) ? {24'b0, W_MemoryData[31:24]} :
							  0;
endmodule
