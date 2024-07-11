`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:40 11/18/2022 
// Design Name: 
// Module Name:    M_CP0 
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
`define SR CP0register[12]
`define Cause CP0register[13]
`define EPC CP0register[14]
module M_CP0(
    input clk,
    input reset,
    input en,
    input [4:0] CP0Add,
    input [31:0] CP0In,
    output [31:0] CP0Out,
    input [31:0] VPC,
    input BDIn,
    input [4:0] ExcCodeIn,
    input [5:0] HWInt,
    input EXLClr,
    output [31:0] EPCOut,
    output Req
    );
	reg[31:0] CP0register[31:0];
	assign CP0Out = CP0register[CP0Add];
	integer i;
	wire [5:0] IM;
	wire EXL, IE, IntReq, ExcReq;
	assign IM = `SR[15:10];
	assign EXL = `SR[1];
	assign IE = `SR[0];
	assign EPCOut = `EPC;
	assign IntReq = (|(HWInt & IM)) & ~EXL & IE;
	assign ExcReq = (ExcCodeIn != 0) & ~EXL;
	assign Req = IntReq | ExcReq;
	initial begin
			for(i = 0; i < 32; i = i + 1) begin
					CP0register[i] <= 0;
			end
	end
	always@(posedge clk) begin
			if(reset == 1) begin
					for(i = 0; i < 32; i = i + 1) begin
							CP0register[i] <= 0;
					end
			end
			else begin
					`Cause[15:10] <= HWInt;  //IP
					if(EXLClr == 1) begin    //eret 
							`SR[1] <= 0;
					end
					
					if(IntReq == 1) begin  //generate interrupt priority
							if(BDIn == 1) begin
									`EPC <= VPC - 4;
							end
							else if(BDIn == 0) begin
									`EPC <= VPC;
							end
							`SR[1] <= 1;
							`Cause[6:2] <= 0;   //ExcCode
							`Cause[31] <= BDIn; //BD
					end
					else if(ExcReq == 1) begin
							if(BDIn == 1) begin
									`EPC <= VPC - 4;
							end
							else if(BDIn == 0) begin
									`EPC <= VPC;
							end
							`SR[1] <= 1;
							`Cause[6:2] <= ExcCodeIn;
							`Cause[31] <= BDIn;
					end
					else if(en == 1) begin
							//$display("%d <= %h", CP0Add, CP0In);
							CP0register[CP0Add] <= CP0In;
					end
			end
	end
endmodule
