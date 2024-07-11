`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:28 10/25/2022 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input [31:0] Addr,
    input [31:0] StoreData,
    input [2:0] MemWrite,
    input clk,
    input reset,
    output [31:0] MemoryData,
	 input [31:0] PC
    );
	 reg [31:0] MemoryReg[3071:0];
	integer i;
	initial begin
			for(i = 0; i < 3072; i = i + 1) begin
					MemoryReg[i] <= 0;
			end
	end
	always@(posedge clk) begin
			if(reset == 1) begin
					for(i = 0; i < 1023; i = i + 1) begin
						MemoryReg[i] <= 0;
					end
			end
			else if(MemWrite == 1) begin
					$display("@%h: *%h <= %h", PC, Addr, StoreData);
					MemoryReg[Addr[20:2]] <= StoreData;
			end
			else if(MemWrite == 2) begin
					if(Addr[1] == 0) begin
							$display("@%h: *%h <= %h", PC, Addr, {MemoryData[31:16], StoreData[15:0]});
							MemoryReg[Addr[20:2]] <= {MemoryData[31:16], StoreData[15:0]};
					end
					else if(Addr[1] == 1) begin
							$display("@%h: *%h <= %h", PC, Addr, {StoreData[15:0], MemoryData[31:16]});
							MemoryReg[Addr[20:2]] <= {StoreData[15:0], MemoryData[31:16]};
					end
 			end
			else if(MemWrite == 3) begin
					if(Addr[1:0] == 0) begin
							$display("@%h: *%h <= %h", PC, Addr, {MemoryData[31:8], StoreData[7:0]});
							MemoryReg[Addr[20:2]] <= {MemoryData[31:8], StoreData[7:0]};
					end
					else if(Addr[1:0] == 1) begin
							$display("@%h: *%h <= %h", PC, Addr, {MemoryData[31:16], StoreData[15:8], MemoryData[7:0]});
							MemoryReg[Addr[20:2]] <= {MemoryData[31:16], StoreData[15:8], MemoryData[7:0]};
					end
					else if(Addr[1:0] == 2) begin
							$display("@%h: *%h <= %h", PC, Addr, {MemoryData[31:24], StoreData[23:16], MemoryData[15:0]});
							MemoryReg[Addr[20:2]] <= {MemoryData[31:24], StoreData[23:16], MemoryData[15:0]};
					end
					else if(Addr[1:0] == 3) begin
							$display("@%h: *%h <= %h", PC, Addr, {StoreData[31:24], MemoryData[23:0]});
							MemoryReg[Addr[20:2]] <= {StoreData[31:24], MemoryData[23:0]};
					end
			end	
	end
	assign MemoryData = MemoryReg[Addr[20:2]];
endmodule
