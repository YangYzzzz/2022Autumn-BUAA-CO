`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:40:01 10/25/2022 
// Design Name: 
// Module Name:    IM 
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
module IM(
    input [31:0] PC,
    output [31:0] Command
    );
	reg[31:0] commandreg[0:4095];       //PUT DATA IN IT
	initial begin
			$readmemh("code.txt",commandreg);
	end
	assign Command = commandreg[(PC - 32'h00003000) >> 2];
endmodule
