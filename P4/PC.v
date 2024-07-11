`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:20:59 10/24/2022 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input [31:0] newPC,
	 input clk,
	 input reset,
    output [31:0] PC
    );
	reg[31:0] pc;
	assign PC = pc;
	initial begin
			pc <= 32'h00003000;
	end
	always@(posedge clk)
	begin
			if(reset == 1) begin
					pc <= 32'h00003000;
			end 
			else begin
					pc <= newPC;
			end
	end
endmodule
