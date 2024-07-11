`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:49:45 11/09/2022 
// Design Name: 
// Module Name:    E_MD 
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
module E_MD(
    input [31:0] E_D1,
    input [31:0] E_D2,
    output [31:0] E_RDLO,
    output [31:0] E_RDHI,
    input clk,
    input reset,
    output Start,
    output Busy,
	 input [3:0] E_MDControl
    );
	integer i;
	wire [63:0] multu;
	wire [63:0] mult;
	wire signed [31:0] signedD1 = E_D1;
	wire signed [31:0] signedD2 = E_D2;
	reg [31:0] lo;
	reg [31:0] hi;
	reg [3:0] cnt;
	assign multu = E_D1 * E_D2;
	assign mult = signedD1 * signedD2;
	assign Start = (((E_MDControl == 1) || (E_MDControl == 2) || (E_MDControl == 3) || (E_MDControl == 4)) && Busy == 0) ? 1 : 0;
	assign Busy = (cnt != 0) ? 1 : 0;
	assign E_RDLO = lo;
	assign E_RDHI = hi;
	initial begin
			lo <= 0;
			hi <= 0;
			cnt <= 0;
	end
	always@(posedge clk) begin
			if(reset == 1) begin
					lo <= 0;
					hi <= 0;
					cnt <= 0;
			end
			else if(cnt != 0) begin
					cnt <= cnt - 1;
			end
			else begin
				
				if(E_MDControl == 1) begin
						cnt <= 5;
						lo <= mult[31:0];
						hi <= mult[63:32];
				end
				else if(E_MDControl == 2) begin
						cnt <= 5;
						lo <= multu[31:0];
						hi <= multu[63:32];
				end
				else if(E_MDControl == 3) begin
						cnt <= 10;
						lo <= signedD1 / signedD2;
						hi <= signedD1 % signedD2;
				end
				else if(E_MDControl == 4) begin
						cnt <= 10;
						lo <= E_D1 / E_D2;
						hi <= E_D1 % E_D2;
				end
				else if(E_MDControl == 5) begin
						lo <= E_D1;
				end
				else if(E_MDControl == 6) begin
						hi <= E_D1;
				end
				else if(E_MDControl == 8) begin
						hi <= lo;
						lo <= hi;
				end
		end
	end
endmodule
