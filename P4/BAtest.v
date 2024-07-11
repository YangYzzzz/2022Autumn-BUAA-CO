`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:55:24 11/20/2022
// Design Name:   BitAdder
// Module Name:   /home/co-eda/SingleCPU/BAtest.v
// Project Name:  SingleCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BitAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BAtest;

	// Inputs
	reg [31:0] ALUA;
	reg [31:0] ALUB;

	// Outputs
	wire [31:0] ALURe;

	// Instantiate the Unit Under Test (UUT)
	BitAdder uut (
		.ALUA(ALUA), 
		.ALUB(ALUB), 
		.ALURe(ALURe)
	);

	initial begin
		// Initialize Inputs
		ALUA = 0;
		ALUB = 0;

		// Wait 100 ns for global reset to finish
		#100;
      ALUA = 32'h000ffff0;
		ALUB = 32'h11110000;
		// Add stimulus here
		#10;
		ALUA = 32'hffff000f;
		#10;
		$finish;
	end
      
endmodule

