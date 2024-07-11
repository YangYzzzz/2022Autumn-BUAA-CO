`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:31:31 11/03/2022 
// Design Name: 
// Module Name:    MainControl 
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
`define SLL 6'b000000 // r 0 && func 0
`define LB 6'b100000
`define LH 6'b100001
`define SB 6'b101000
`define SH 6'b101001
`define NEW 6'b111111
module MainControl(
    input [5:0] D_Op,
    input [5:0] D_Func,
    output [2:0] D_nPCSel,
    output [2:0] D_ExtOp,
    output [2:0] D_RegDst,
    output [2:0] D_ALUSrc,
    output [2:0] D_ALUControl,
    output [2:0] D_MemWrite,
    output [2:0] D_RegWriteSel,
    output [2:0] D_RegWrite,
    output [1:0] D_TuseRs,
    output [1:0] D_TuseRt,
    output [1:0] D_Tnew,
	 output [2:0] D_DataExtOp,
	 output D_Check
    );
	 reg[1:0] tusert, tusers, tnew;
	 reg[2:0] alucontrol, npcsel, extop, regdst, alusrc, regwritesel, regwrite, memwrite, dataextop;
	 assign D_Check = (D_Op == `NEW) ? 1 : 0;   //other signal under 
	 assign D_DataExtOp = dataextop;
	 assign D_nPCSel = npcsel;
	 assign D_ExtOp = extop;
	 assign D_RegDst = regdst;
	 assign D_ALUSrc = alusrc;
	 assign D_ALUControl = alucontrol;
	 assign D_MemWrite = memwrite;
	 assign D_RegWrite = regwrite;
	 assign D_RegWriteSel = regwritesel;
	 assign D_TuseRt = tusert;
	 assign D_TuseRs = tusers;
	 assign D_Tnew = tnew;
	 always@(*) begin
			case(D_Op)
					`R: begin
						case(D_Func)
								`ADD: begin
										npcsel <= 0;
										extop <= 0;
										regdst <= 1;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 1;
										tusers <= 1;
										tusert <= 1;
										tnew <= 1;
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
										tusers <= 1;
										tusert <= 1;
										tnew <= 1;
										dataextop <= 0;
								end
								
								`SLL: begin
										npcsel <= 0;
										extop <= 0;
										regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 3;
										tusert <= 3; //3 represent no mean
										tnew <= 0;
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
										tusers <= 0;
										tusert <= 3;
										tnew <= 0;
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
										tusers <= 1;
										tusert <= 3;
										tnew <= 1;
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
										tusers <= 1;
										tusert <= 3;
										tnew <= 2;
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
										tusers <= 1;
										tusert <= 3;
										tnew <= 2;
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
										tusers <= 1;
										tusert <= 3;
										tnew <= 2;
										dataextop <= 2;
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
										tusers <= 1;
										tusert <= 2;
										tnew <= 0;
										dataextop <= 0;
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
										tusers <= 1;
										tusert <= 2;
										tnew <= 0;
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
										tusers <= 1;
										tusert <= 2;
										tnew <= 0;
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
										tusers <= 3;
										tusert <= 3;
										tnew <= 1;
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
										tusers <= 0;
										tusert <= 0;
										tnew <= 0;
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
										tusers <= 3;
										tusert <= 3;
										tnew <= 0;  //appear in d
										dataextop <= 0;
					end
			endcase
	end
endmodule
