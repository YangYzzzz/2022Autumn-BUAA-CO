`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:24 11/13/2022 
// Design Name: 
// Module Name:    DataExt 
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
`define LW 3'b000
`define LH 3'b100
`define LB 3'b010
module DataExt(
    input [31:0] StoreAddr,
    input [31:0] MemoryData,
    input [2:0] DataExtOp,
    output [31:0] LoadData
    );
	 wire [7:0] byt;
	 reg [4:0] cnt;
	 integer i;
	 assign byt = (StoreAddr[1:0] == 0) ? MemoryData[7:0] :
					  (StoreAddr[1:0] == 1) ? MemoryData[15:8] :
					  (StoreAddr[1:0] == 2) ? MemoryData[23:16] :
					  (StoreAddr[1:0] == 3) ? MemoryData[32:24] :
					  0;
	always@(*) begin
			cnt = 0;
			for(i=0;i<8;i=i+1) begin
					if(byt[i]==0) begin
							cnt = cnt + 1;
					end
			end
	end
	assign LoadData = (DataExtOp == `LW) ? MemoryData :
							  (DataExtOp == `LH && StoreAddr[1] == 0) ? {{16{MemoryData[15]}}, MemoryData[15:0]} :
							  (DataExtOp == `LH && StoreAddr[1] == 1) ? {{16{MemoryData[31]}}, MemoryData[31:16]} :
							  (DataExtOp == 3 && StoreAddr[1] == 0) ? {16'b0, MemoryData[15:0]} :
							  (DataExtOp == 3 && StoreAddr[1] == 1) ? {16'b0, MemoryData[31:16]} :
							  (DataExtOp == `LB && StoreAddr[1:0] == 0) ? {{24{MemoryData[7]}}, MemoryData[7:0]} :
							  (DataExtOp == `LB && StoreAddr[1:0] == 1) ? {{24{MemoryData[15]}}, MemoryData[15:8]} :
							  (DataExtOp == `LB && StoreAddr[1:0] == 2) ? {{24{MemoryData[23]}}, MemoryData[23:16]} :
							  (DataExtOp == `LB && StoreAddr[1:0] == 3) ? {{24{MemoryData[31]}}, MemoryData[31:24]} :
							  (DataExtOp == 1 && StoreAddr[1:0] == 0) ? {24'b0, MemoryData[7:0]} :
							  (DataExtOp == 1 && StoreAddr[1:0] == 1) ? {24'b0, MemoryData[15:8]} :
							  (DataExtOp == 1 && StoreAddr[1:0] == 2) ? {24'b0, MemoryData[23:16]} :
							  (DataExtOp == 1 && StoreAddr[1:0] == 3) ? {24'b0, MemoryData[31:24]} :
							  (DataExtOp == 5 && cnt == 4) ? {{24{byt[7]}}, byt} :
							  0;
endmodule

