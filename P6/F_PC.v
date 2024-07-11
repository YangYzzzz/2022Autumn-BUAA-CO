`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:01 11/09/2022 
// Design Name: 
// Module Name:    F_PC 
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
module F_PC(
    input [31:0] F_newPC,
	 input clk,
	 input reset,
	 input en,
    output [31:0] F_PC
    );
	reg[31:0] pc;
	assign F_PC = pc;
	initial begin
			pc <= 32'h00003000;
	end
	always@(posedge clk)
	begin
			if(reset == 1) begin //priority
					pc <= 32'h00003000;
			end 
			else if(en == 0) begin
					pc <= pc;
			end
			else begin
					pc <= F_newPC;
			end
	end
endmodule
