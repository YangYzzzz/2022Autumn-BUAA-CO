`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:18:27 11/09/2022 
// Design Name: 
// Module Name:    M_DM 
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
module M_DM(
    input [31:0] M_ALURe,
    input [31:0] M_StoreData,
    input M_MemWrite,
    input clk,
    input reset,
    output [31:0] M_LoadData,
	 input [31:0] M_PC8
    );
	 reg [31:0] MemoryReg[3071:0];
	integer i;
	initial begin
			for(i = 0; i < 3071; i = i + 1) begin
					MemoryReg[i] <= 0;
			end
	end
	always@(posedge clk) begin
			if(reset == 1) begin
					for(i = 0; i < 3071; i = i + 1) begin
						MemoryReg[i] <= 0;
					end
			end
			else if(M_MemWrite == 1) begin
					$display("%d@%h: *%h <= %h", $time, M_PC8 - 8, M_ALURe, M_StoreData);
					MemoryReg[M_ALURe[20:2]] <= M_StoreData;
			end
	end
	assign M_LoadData = MemoryReg[M_ALURe[20:2]];
endmodule
