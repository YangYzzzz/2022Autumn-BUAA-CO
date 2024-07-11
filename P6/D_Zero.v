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
    output D_Zero,
	 output D_FlagJAL
    );
	 integer i;
	 reg[5:0] cnt;
	 always@(*) begin
			cnt = 0;
			for(i=0;i<32;i=i+1) begin
					if(D_RD1[i]==1) begin
							cnt = cnt + 1;
					end
			end
	 end
	assign D_FlagJAL = (cnt % 2 == 0) ? 1 : 0;
	assign D_Zero = (D_RD1 == D_RD2) ? 1 : 0;
endmodule