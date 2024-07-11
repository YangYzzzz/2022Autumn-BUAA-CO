`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:11:31 10/25/2022 
// Design Name: 
// Module Name:    CU 
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
`define R   6'b0
`define ADD 6'b100000
`define SUB 6'b100010
`define ORI 6'b001101
`define LW  6'b100011
`define SW  6'b101011
`define BEQ 6'b000100
`define LUI 6'b001111
`define JAL 6'b000011  //op
`define JR  6'b001000  //r && fun
`define NOP 6'b000000
`define LB 6'b100000
`define LH 6'b100001
`define SB 6'b101000
`define SH 6'b101001
`define PASS 6'b111110
`define BNEZALC 6'b000001
module CU(
    input [5:0] Op,
    input [5:0] Func,
    output [2:0] MemWrite,
    output [2:0] RegWriteSel,
    output [2:0] ALUSrc,
    output [2:0] nPCSel,
    output [2:0] RegDst,
    output [2:0] RegWrite,
	 output [2:0] ALUControl,
	 output [2:0] ExtOp,
	 output [2:0] DataExtOp
    );
	 reg [2:0] alucontrol, dataextop, regwritesel, npcsel, regdst, extop, memwrite, regwrite, alusrc;
	 assign DataExtOp = dataextop;
	 assign nPCSel = npcsel;
	 assign ExtOp = extop;
	 assign RegDst = regdst;
	 assign ALUSrc = alusrc;
	 assign ALUControl = alucontrol;
	 assign MemWrite = memwrite;
	 assign RegWrite = regwrite;
	 assign RegWriteSel = regwritesel;
	 always@(*) begin
			case(Op)
					`BNEZALC: begin
										npcsel <= 4;
										extop <= 0;
										regdst <= 2;
										alusrc <= 0;
										alucontrol <= 3;
										memwrite <= 0;
										regwritesel <= 2;
										regwrite <= 2;
										dataextop <= 0;
					end
					
					`PASS: begin
										npcsel <= 0;
										extop <= 1;
										regdst <= 0;
										alusrc <= 1;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 1;
										regwrite <= 1;
										dataextop <= 5;
					end
					
					`R: begin
						case(Func)
								`ADD: begin
										npcsel <= 0;
										extop <= 0;
										regdst <= 1;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 1;
										dataextop <= 0;
								end
								
								`SUB: begin
										npcsel <= 0;
										extop <= 0;
										regdst <= 1;
										alusrc <= 0;
										alucontrol <= 1;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 1;
										dataextop <= 0;
								end
								
								`NOP: begin
										npcsel <= 0;
										extop <= 0;
										regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										dataextop <= 0;
								end
								
								`JR: begin
										npcsel <= 3;
										extop <= 0;
										regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										dataextop <= 0;
								end
						endcase
					end
					
					`ORI: begin
										npcsel <= 0;
										extop <= 0;
										regdst <= 0;
										alusrc <= 1;
										alucontrol <= 2;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 1;
										dataextop <= 0;
					end
					
					`LW: begin
										npcsel <= 0;
										extop <= 1;
										regdst <= 0;
										alusrc <= 1;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 1;
										regwrite <= 1;
										dataextop <= 0;
					end
					
					`SW: begin
										npcsel <= 0;
										extop <= 1;
									   regdst <= 0;
										alusrc <= 1;
										alucontrol <= 0;
										memwrite <= 1;
										regwritesel <= 0;
										regwrite <= 0;
										dataextop <= 0;
					end
					
					`LH: begin
										npcsel <= 0;
										extop <= 1;
										regdst <= 0;
										alusrc <= 1;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 1;
										regwrite <= 1;
										dataextop <= 4;
					end
					
					`LB: begin
										npcsel <= 0;
										extop <= 1;
										regdst <= 0;
										alusrc <= 1;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 1;
										regwrite <= 1;
										dataextop <= 2;
					end
					
					`SH: begin
										npcsel <= 0;
										extop <= 1;
									   regdst <= 0;
										alusrc <= 1;
										alucontrol <= 0;
										memwrite <= 2;
										regwritesel <= 0;
										regwrite <= 0;
										dataextop <= 0;
					end
					
					`SB: begin
										npcsel <= 0;
										extop <= 1;
									   regdst <= 0;
										alusrc <= 1;
										alucontrol <= 0;
										memwrite <= 3;
										regwritesel <= 0;
										regwrite <= 0;
										dataextop <= 0;
					end
					
					`LUI: begin
										npcsel <= 0;
										extop <= 2;
										regdst <= 0;
										alusrc <= 1;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 1;
										dataextop <= 0;
					end
					
					`BEQ: begin
										npcsel <= 1;
										extop <= 0;
										regdst <= 0;
										alusrc <= 0;
										alucontrol <= 1;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										dataextop <= 0;
					end
					
					`JAL: begin
										npcsel <= 2;
										extop <= 0;
										regdst <= 2;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 2;
										regwrite <= 1;
										dataextop <= 0;
					end
			endcase
	end
endmodule
