`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:55:54 12/02/2022 
// Design Name: 
// Module Name:    Tube 
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
module Tube(
    output [7:0] digital_tube2,
    output digital_tube_sel2,
	 
    output [7:0] digital_tube1,
    output [3:0] digital_tube_sel1,
	 
    output [7:0] digital_tube0,
    output [3:0] digital_tube_sel0,
	 
	 input clk_in,
	 input sys_rstn,
	 input [3:0] Tube_WE,
	 input [31:0] Tube_WriteData,
	 input [31:0] Tube_Addr,
	 output [31:0] Tube_ReadData
);
	reg [31:0] tube[1:0];
	reg [31:0] fixed_wdata;
	integer i;
	assign Tube_ReadData = tube[Tube_Addr[2]];
	always @(*) begin
        fixed_wdata = tube[Tube_Addr[2]];
        if (Tube_WE[3]) fixed_wdata[31:24] = Tube_WriteData[31:24];
        if (Tube_WE[2]) fixed_wdata[23:16] = Tube_WriteData[23:16];
        if (Tube_WE[1]) fixed_wdata[15: 8] = Tube_WriteData[15: 8];
        if (Tube_WE[0]) fixed_wdata[7 : 0] = Tube_WriteData[7 : 0];
    end
   always@(posedge clk_in) begin
			if(~sys_rstn) begin
					for(i=0;i<2;i=i+1) begin
							tube[i] <= 0;
					end
			end
			else if(|Tube_WE) begin
					tube[Tube_Addr[2]] <= fixed_wdata;		 // 7f50 - 7f57   0000 0011 , 0100 0111
 			end
	end
	// tube[0][15:0] tube0; tube[0][31:16] tube1; tube[1][3:0] tube2 sign
	digital_tube uutdigital_tube0(.clk(clk_in), .rstn(sys_rstn), .data(tube[0][15:0]), .sel(digital_tube_sel0), .seg(digital_tube0));
	digital_tube uutdigital_tube1(.clk(clk_in), .rstn(sys_rstn), .data(tube[0][31:16]), .sel(digital_tube_sel1), .seg(digital_tube1));
	// now no sign
	assign digital_tube_sel2 = 1;
	assign digital_tube2 = 8'b11111111;
endmodule
