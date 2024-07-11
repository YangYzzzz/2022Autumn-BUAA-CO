`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:47:50 11/02/2022 
// Design Name: 
// Module Name:    F_DRegister 
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
module F_DRegister(
    input [31:0] F_PC,
    input [31:0] F_Command,
    output [31:0] D_PC4,
    output [31:0] D_Command,
    input clk,
    input reset,
    input en,
	 input Check,
	 input Flag
    );
	reg[31:0] command;
	reg[31:0] pc4;
	assign D_PC4 = pc4;
	assign D_Command = command;
	always@(posedge clk) begin
			if(reset == 1) begin
					pc4 <= 0;
					command <= 0;
			end
			else if(en == 0) begin
					pc4 <= pc4;
					command <= command;
			end
			else if(Check & ~Flag) begin    // nullify current instruction
					pc4 <= 0;
					command <= 0;
			end
			else begin
					pc4 <= F_PC + 4;
					command <= F_Command;
			end
	end
endmodule
