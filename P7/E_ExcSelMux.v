`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:13:57 11/18/2022 
// Design Name: 
// Module Name:    E_ExcSelMux 
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
module E_ExcSelMux(
    input [4:0] Raw_E_ExcCode,
    input [4:0] Cur_E_ExcCode,
    output [4:0] E_ExcCode
    );
	assign E_ExcCode = (Raw_E_ExcCode != 0) ? Raw_E_ExcCode :
							 (Cur_E_ExcCode != 0) ? Cur_E_ExcCode :
							 0;

endmodule
