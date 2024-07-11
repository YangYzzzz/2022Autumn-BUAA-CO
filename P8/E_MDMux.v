`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:13:22 11/10/2022 
// Design Name: 
// Module Name:    E_MDMux 
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
module E_MDDataMux(
    input [31:0] E_RDLO,
    input [31:0] E_RDHI,
    output [31:0] E_MDData,
    input E_MDDataOp
    );
	assign E_MDData = (E_MDDataOp == 0) ? E_RDLO :
							(E_MDDataOp == 1) ? E_RDHI :
							0;

endmodule
