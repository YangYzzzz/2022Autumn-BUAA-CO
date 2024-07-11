`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:52:34 11/20/2022 
// Design Name: 
// Module Name:    BitAdder 
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
module BitAdder(
    input[31:0] ALUA,
    input [31:0] ALUB,
    output [31:0] ALURe
    );
	reg [5:0] cnt;
	reg [31:0] alu;
	initial begin
			for(i=0;i<32;i=i+1) begin
					alu[i] <= 0;
			end
	end
	assign ALURe = alu;
	integer i, a, b, c, d;
	always@(*) begin
			cnt = 0;
			alu = 0;
			for(i=0;i<32;i=i+1) begin
					if(ALUA[i]==1) begin
							cnt = cnt + 1;
							alu[i] = 1;
					end
			end
	end
	always@(*) begin
			for(a=0;ALUA[a]==0;a=a+1) begin  //back 0
			end
	end
	always@(*) begin
			for(b=0;ALUA[b]==1;b=b+1) begin //back 1
			end
	end
	always@(*) begin
			for(c=0;ALUA[31-c]==0;c=c+1) begin //front 0
			end
	end
	always@(*) begin
			for(d=0;ALUA[31-d]==1;d=d+1) begin //front 1
			end
	end
endmodule
