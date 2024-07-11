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
	 input Req,
    output [31:0] F_PC,
	 output [4:0] F_ExcCode,
	 input M_EXLClr,
	 input [31:0] EPCOut
    );
	reg[31:0] pc;
	assign F_PC = pc;
	assign F_ExcCode = (F_PC < 32'h00003000 || F_PC > 32'h00006ffc || F_PC[1:0] != 0) ? 4 : 0;
	initial begin
			pc <= 32'h00003000;
	end
	always@(posedge clk)
	begin
			if(reset == 1) begin //priority
					pc <= 32'h00003000;
			end 
			else if(Req == 1) begin
					pc <= 32'h00004180;
			end
			else if(M_EXLClr == 1) begin
					pc <= EPCOut;
			end
			else if(en == 1) begin
					pc <= F_newPC;
			end
	end
endmodule
