`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:24:18 11/09/2022 
// Design Name: 
// Module Name:    F_DRegister 
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
module F_DRegister(
    input [31:0] F_PC,
    input [31:0] F_Command,
    output [31:0] D_PC,
    output [31:0] D_Command,
    input clk,
    input reset,
    input en,
	 input [4:0] F_ExcCode,
	 output [4:0] Raw_D_ExcCode,
	 input Req,
	 input EXLClr,
	 input [31:0] EPCOut,
	 input [2:0] D_nPCSel,
	 output D_BD
    );
	reg [31:0] command, pc;
	reg [4:0] exccode;
	reg bd;
	assign D_BD = bd;
	assign D_PC = pc;
	assign Raw_D_ExcCode = exccode;
	assign D_Command = command;
	always@(posedge clk) begin
			if(reset == 1) begin
					pc <= 32'h00003000;
					command <= 0;
					exccode <= 0;
					bd <= 0;
			end
			else if(Req == 1) begin
					pc <= 32'h00004180;
					command <= 0;
					exccode <= 0;
					bd <= 0;
			end
			else if(EXLClr == 1) begin
					pc <= EPCOut;
					command <= 0;
					exccode <= 0;
					bd <= 0;
			end
			else if(en == 1) begin
					if(F_ExcCode == 4) begin
							command <= 0;
					end
					else begin
							command <= F_Command;
					end
					pc <= F_PC;
					exccode <= F_ExcCode;
					if(D_nPCSel != 0) begin
							bd <= 1;
					end
					else begin
							bd <= 0;
					end
			end
	end
endmodule

