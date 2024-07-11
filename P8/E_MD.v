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
    output Start,  //valid == 1 stall
    output Busy,  //ready == 0 stall
	 input [2:0] E_MDControl,
	 input Req
    );
	assign Start = in_valid;
	assign Busy = ~in_ready;
	wire [31:0] out_res0, out_res1;
	wire [1:0] in_op;
	wire in_sign, in_ready, in_valid, out_ready, out_valid;
	assign in_op = (E_MDControl == 1 || E_MDControl == 2) ? 2'd1 :
						(E_MDControl == 3 || E_MDControl == 4) ? 2'd2 :
						2'd0;
	assign in_sign = (E_MDControl == 1 || E_MDControl == 3) ? 1'b1 :
						  (E_MDControl == 2 || E_MDControl == 4) ? 1'b0 : 1'b0;
	reg [31:0] lo;
	reg [31:0] hi;
	assign in_valid = (((E_MDControl == 1) || (E_MDControl == 2) || (E_MDControl == 3) || (E_MDControl == 4)) && Req == 0) ? 1'b1 : 1'b0;
	assign out_ready = 1'b1;
	assign E_RDLO = lo;
	assign E_RDHI = hi;
	MDCore uutMDCore(.clk(clk), .reset(reset), .in_src0(E_D1), .in_src1(E_D2), .in_op(in_op), .in_sign(in_sign), .out_res0(out_res0), .out_res1(out_res1), .out_ready(out_ready),
						  .in_valid(in_valid), .in_ready(in_ready), .out_valid(out_valid));
	always@(posedge clk) begin
			if(reset == 1) begin
					lo <= 0;
					hi <= 0;
			end
			else if(out_ready & out_valid) begin
						lo <= out_res0;
						hi <= out_res1;
			end
			else if(E_MDControl == 5) begin
					lo <= E_D1;
			end
			else if(E_MDControl == 6) begin
					hi <= E_D1;
			end
	end
endmodule
