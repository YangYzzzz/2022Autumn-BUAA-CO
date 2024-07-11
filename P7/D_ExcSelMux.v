`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:53:37 11/18/2022 
// Design Name: 
// Module Name:    D_ExcSelMux 
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
module D_ExcSelMux(    //priority current
	input [4:0] Raw_D_ExcCode,
	input [4:0] Cur_D_ExcCode,
	output [4:0] D_ExcCode
    );
	assign D_ExcCode = (Raw_D_ExcCode != 0) ? Raw_D_ExcCode :
							 (Cur_D_ExcCode != 0) ? Cur_D_ExcCode :
							 0;

endmodule
