`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:48:18 12/06/2022 
// Design Name: 
// Module Name:    M_RegSel 
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
module M_RegSel(
    input [4:0] M_A3,
    input [31:0] M_RD2,
    input [31:0] M_LoadData,
    input M_Check,
    output [4:0] M_NewA3
    );
	wire [31:0] a;
	assign a = (M_LoadData + M_RD2) & 32'h1e;
	assign M_NewA3 = (M_Check == 1) ? a[4:0] :
							M_A3;

endmodule
