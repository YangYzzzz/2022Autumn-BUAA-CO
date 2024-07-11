`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:41 11/03/2022 
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
    input [31:0] M_StoreAddr,
    input [31:0] M_StoreData,
    input [2:0] M_MemWrite,
    input clk,
    input reset,
    output [31:0] M_MemoryData,
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
					$display("%d@%h: *%h <= %h", $time, M_PC8 - 8, M_StoreAddr, M_StoreData);
					MemoryReg[M_StoreAddr[20:2]] <= M_StoreData;
			end
			else if(M_MemWrite == 2) begin
					if(M_StoreAddr[1] == 0) begin
							$display("@%h: *%h <= %h", M_PC8 - 8, M_StoreAddr, {M_MemoryData[31:16], M_StoreData[15:0]});
							MemoryReg[M_StoreAddr[20:2]] <= {M_MemoryData[31:16], M_StoreData[15:0]};
					end
					else if(M_StoreAddr[1] == 1) begin
							$display("@%h: *%h <= %h", M_PC8 - 8, M_StoreAddr, {M_StoreData[15:0], M_MemoryData[31:16]});
							MemoryReg[M_StoreAddr[20:2]] <= {M_StoreData[15:0], M_MemoryData[31:16]};
					end
 			end
			else if(M_MemWrite == 3) begin
					if(M_StoreAddr[1:0] == 0) begin
							$display("@%h: *%h <= %h", M_PC8 - 8, M_StoreAddr, {M_MemoryData[31:8], M_StoreData[7:0]});
							MemoryReg[M_StoreAddr[20:2]] <= {M_MemoryData[31:8], M_StoreData[7:0]};
					end
					else if(M_StoreAddr[1:0] == 1) begin
							$display("@%h: *%h <= %h", M_PC8 - 8, M_StoreAddr, {M_MemoryData[31:16], M_StoreData[15:8], M_MemoryData[7:0]});
							MemoryReg[M_StoreAddr[20:2]] <= {M_MemoryData[31:16], M_StoreData[15:8], M_MemoryData[7:0]};
					end
					else if(M_StoreAddr[1:0] == 2) begin
							$display("@%h: *%h <= %h", M_PC8 - 8, M_StoreAddr, {M_MemoryData[31:24], M_StoreData[23:16], M_MemoryData[15:0]});
							MemoryReg[M_StoreAddr[20:2]] <= {M_MemoryData[31:24], M_StoreData[23:16], M_MemoryData[15:0]};
					end
					else if(M_StoreAddr[1:0] == 3) begin
							$display("@%h: *%h <= %h", M_PC8 - 8, M_StoreAddr, {M_StoreData[31:24], M_MemoryData[23:0]});
							MemoryReg[M_StoreAddr[20:2]] <= {M_StoreData[31:24], M_MemoryData[23:0]};
					end
			end	
	end
	assign M_MemoryData = MemoryReg[M_StoreAddr[20:2]];
endmodule
