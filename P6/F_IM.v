`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:24:40 11/09/2022 
// Design Name: 
// Module Name:    F_IM 
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
module F_IM(
    input [31:0] F_PC,
    output [31:0] F_Command
    );
	reg[31:0] commandreg[0:4095];       //PUT DATA IN IT
	initial begin
			$readmemh("code.txt",commandreg);
	end
	assign F_Command = commandreg[(F_PC - 32'h00003000) >> 2];
endmodule
