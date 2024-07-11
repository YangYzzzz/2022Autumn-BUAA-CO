`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:31:04 10/25/2022 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input clk,
	 input reset,
	 input [4:0] A1,
    input [4:0] A2,
    input [31:0] WD,
    input [2:0] RegWrite,
    input [4:0] A3,
    output [31:0] RD1,
    output [31:0] RD2,
	 input [31:0] PC,
	 input mark
    );
	reg[31:0] register[0:31];
	integer i;
	initial begin 
			for(i = 0; i < 32; i = i + 1) begin
					register[i] <= 0;
		end
	end
			always@(posedge clk) begin
					if(reset == 1) begin
							for(i = 0; i < 32; i = i + 1) begin
									register[i] <= 0;
							end
					end
					else if((RegWrite == 1 || (RegWrite == 2 && mark == 1)) && A3 != 0) begin
									$display("@%h: $%d <= %h", PC, A3, WD);
									register[A3] <= WD;
					end
			end
	assign RD1 = register[A1];
	assign RD2 = register[A2];
endmodule
