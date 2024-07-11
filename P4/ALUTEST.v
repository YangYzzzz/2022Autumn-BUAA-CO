`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:15:05 11/22/2022
// Design Name:   ALU
// Module Name:   /home/co-eda/SingleCPU/ALUTEST.v
// Project Name:  SingleCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUTEST;

	// Inputs
	reg [31:0] ALUA;
	reg [31:0] ALUB;
	reg [2:0] ALUControl;

	// Outputs
	wire [31:0] ALURe;
	wire Zero;
	wire mark;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.ALUA(ALUA), 
		.ALUB(ALUB), 
		.ALUControl(ALUControl), 
		.ALURe(ALURe), 
		.Zero(Zero), 
		.mark(mark)
	);

	initial begin
		// Initialize Inputs
		ALUA = 0;
		ALUB = 0;
		ALUControl = 0;

		// Wait 100 ns for global reset to finish
		#100;
       ALUControl = 3;
		ALUA = 32'hffff0000;
		ALUB = 16;
		#10;
		$finish;
		// Add stimulus here

	end
      
endmodule

