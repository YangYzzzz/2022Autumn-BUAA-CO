`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:46 11/09/2022 
// Design Name: 
// Module Name:    D_Zero 
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
module D_Zero(
    input [31:0] D_RD1,
    input [31:0] D_RD2,
    output D_Zero
    );
	assign D_Zero = (D_RD1 == D_RD2) ? 1'b1 :
			 1'b0;
endmodule