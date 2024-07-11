`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:16 11/02/2022 
// Design Name: 
// Module Name:    D_IM 
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
module D_IM(
    input [31:0] F_PC,
    output [31:0] Command
    );
	reg[31:0] commandreg[0:1023];       //PUT DATA IN IT
	initial begin
			$readmemh("code.txt",commandreg);
	end
	assign Command = commandreg[(F_PC - 32'h00003000) >> 2];
endmodule
