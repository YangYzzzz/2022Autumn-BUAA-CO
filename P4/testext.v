`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:05:34 10/26/2022
// Design Name:   EXT
// Module Name:   /home/co-eda/SingleCPU/testext.v
// Project Name:  SingleCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EXT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testext;

	// Inputs
	reg [15:0] Imm16;
	reg [1:0] ExtOp;

	// Outputs
	wire [31:0] Imm32;

	// Instantiate the Unit Under Test (UUT)
	EXT uut (
		.Imm16(Imm16), 
		.ExtOp(ExtOp), 
		.Imm32(Imm32)
	);

	initial begin
		// Initialize Inputs
		Imm16 = 0;
		ExtOp = 0;

		// Wait 100 ns for global reset to finish
		#100;
      ExtOp = 2;
Imm16 = 4;
#10;
$finish;		
		// Add stimulus here

	end
      
endmodule

