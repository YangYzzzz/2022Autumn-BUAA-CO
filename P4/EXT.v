`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:02:19 10/26/2022 
// Design Name: 
// Module Name:    EXT 
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:20:12 10/24/2022 
// Design Name: 
// Module Name:    EXT 
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
`define ZeroExt 2'b00
`define SignExt 2'b01
`define LuiExt  2'b10

module EXT(
    input [15:0] Imm16,
    input [2:0] ExtOp,
    output [31:0] Imm32
    );
	assign Imm32 =  (ExtOp == `SignExt)? {{16{Imm16[15]}},Imm16} :
					  (ExtOp == `ZeroExt)? {16'b0,Imm16} :
					  (ExtOp == `LuiExt)? {Imm16,16'b0} :
					  0;

endmodule
