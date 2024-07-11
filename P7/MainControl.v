`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:19 11/09/2022 
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
`define NOP 6'b000000 // r 0 && func 0
`define AND 6'b100100
`define OR 6'b100101
`define SLT 6'b101010
`define SLTU 6'b101011
`define ADDI 6'b001000
`define ANDI 6'b001100
`define BNE 6'b000101
`define LB 6'b100000
`define LH 6'b100001
`define SB 6'b101000
`define SH 6'b101001
`define MULT 6'b011000
`define MULTU 6'b011001
`define DIV 6'b011010
`define DIVU 6'b011011
`define MTLO 6'b010011
`define MTHI 6'b010001
`define MFLO 6'b010010
`define MFHI 6'b010000
`define SYSCALL 6'b001100
`define CP0 6'b010000
`define ERET 6'b011000
`define MFC0 5'b00000
`define MTC0 5'b00100
module MainControl(
    input [5:0] D_Op,
    input [5:0] D_Func,
	 input [4:0] D_Rs,
    output [2:0] D_nPCSel,
    output [1:0] D_ExtOp,
    output [1:0] D_RegDst,
    output [1:0] D_ALUSrc,
    output [3:0] D_ALUControl,
    output [1:0] D_MemWrite,
    output [2:0] D_RegWriteSel,
    output D_RegWrite,
    output [1:0] D_TuseRs,
    output [1:0] D_TuseRt,
    output [1:0] D_Tnew,
	 output [2:0] D_DataExtOp,  //000 no ext; 001 unsigned byte; 010 signed byte; 011 unsigned halfbyte; 100 signed halfbyte
	 output [2:0] D_MDControl,
	 output D_MDDataOp,
	 output [4:0] Cur_D_ExcCode,
	 output D_CP0Write,
	 output D_EXLClr,
	 input isPI,
	 output isPICommand
    );
	 reg[1:0] extop, regdst, alusrc, tusert, tusers, tnew, memwrite;
	 reg[2:0] dataextop, mdcontrol, npcsel, regwritesel;
	 reg[3:0] alucontrol;
	 reg[4:0] exccode;
	 reg regwrite, mddataop, exlclr, cp0write;
	 assign isPICommand = ((D_Op == `CP0 && D_Rs == `MTC0) || (D_Op == `CP0 && D_Rs == `MFC0)) ? 1 : 0;
	 assign D_EXLClr = (D_Op == `CP0 && D_Func == `ERET) ? 1 : 0; //single
	 assign D_CP0Write = (D_Op == `CP0 && D_Rs == `MTC0 && isPI == 1) ? 1 : 0;
	 assign Cur_D_ExcCode = exccode;
	 assign D_MDControl = mdcontrol;
	 assign D_MDDataOp = mddataop;
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
					`CP0: begin
						case(D_Func)
								`ERET: begin
										npcsel <= 0;
										extop <= 0;
										regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 3;
										tusert <= 3;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0; 
								end
						endcase
							
						case(D_Rs)
								`MTC0: begin  //grf rt -> cp0 rd
									case(isPI)
										1'b1: begin
											npcsel <= 0;
											extop <= 0;
											regdst <= 0;
											alusrc <= 0;
											alucontrol <= 0;
											memwrite <= 0;
											regwritesel <= 0;
											regwrite <= 0;
											tusers <= 3;
											tusert <= 2;
											tnew <= 0;
											dataextop <= 0;
											mdcontrol <= 0;
											mddataop <= 0;
											exccode <= 0;
										end
										1'b0: begin
											npcsel <= 0;
											extop <= 0;
											regdst <= 0;
											alusrc <= 0;
											alucontrol <= 0;
											memwrite <= 0;
											regwritesel <= 0;
											regwrite <= 0;
											tusers <= 3;
											tusert <= 3;
											tnew <= 0;
											dataextop <= 0;
											mdcontrol <= 0;
											mddataop <= 0;
											exccode <= 10;
										end
									endcase
								end
									
								`MFC0: begin
									case(isPI)
										1'b1: begin
											npcsel <= 0;
											extop <= 0;
											regdst <= 0;
											alusrc <= 0;
											alucontrol <= 0;
											memwrite <= 0;
											regwritesel <= 4;
											regwrite <= 1;
											tusers <= 3;
											tusert <= 3;
											tnew <= 2;
											dataextop <= 0;
											mdcontrol <= 0;
											mddataop <= 0;
											exccode <= 0;
										end
										1'b0: begin
											npcsel <= 0;
											extop <= 0;
											regdst <= 0;
											alusrc <= 0;
											alucontrol <= 0;
											memwrite <= 0;
											regwritesel <= 0;
											regwrite <= 0;
											tusers <= 3;
											tusert <= 3;
											tnew <= 0;
											dataextop <= 0;
											mdcontrol <= 0;
											mddataop <= 0;
											exccode <= 10;
										end
									endcase
								end
						endcase
					end
					
					`R: begin
						case(D_Func)
								`NOP: begin
										npcsel <= 0;
										extop <= 0;
										regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 3;
										tusert <= 3;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0; //syscall
								end
								
								`SYSCALL: begin
										npcsel <= 0;
										extop <= 0;
										regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 3;
										tusert <= 3;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 8; //syscall
								end
								
								`ADD: begin
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
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
								end
								
								`SUB: begin
										npcsel <= 0;
										extop <= 0;
										regdst <= 1;
										alusrc <= 0;
										alucontrol <= 2;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 1;
										tusers <= 1;
										tusert <= 1;
										tnew <= 1;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
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
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
								end
								
								`AND: begin
										npcsel <= 0;
										extop <= 0;
									   regdst <= 1;
										alusrc <= 0;
										alucontrol <= 4;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 1;
										tusers <= 1;
										tusert <= 1;
										tnew <= 1;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
								end
								
								`OR: begin
										npcsel <= 0;
										extop <= 0;
									   regdst <= 1;
										alusrc <= 0;
										alucontrol <= 3;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 1;
										tusers <= 1;
										tusert <= 1;
										tnew <= 1;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
								end
								
								`SLT: begin
										npcsel <= 0;
										extop <= 0;
									   regdst <= 1;
										alusrc <= 0;
										alucontrol <= 5;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 1;
										tusers <= 1;
										tusert <= 1;
										tnew <= 1;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
								end
								
								`SLTU: begin
										npcsel <= 0;
										extop <= 0;
									   regdst <= 1;
										alusrc <= 0;
										alucontrol <= 6;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 1;
										tusers <= 1;
										tusert <= 1;
										tnew <= 1;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
								end
								
								`MULT: begin
										npcsel <= 0;
										extop <= 0;
									   regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 1;
										tusert <= 1;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 1;
										mddataop <= 0;
										exccode <= 0;
								end
								
								`MULTU: begin
										npcsel <= 0;
										extop <= 0;
									   regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 1;
										tusert <= 1;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 2;
										mddataop <= 0;
										exccode <= 0;
								end
								
								`DIV: begin
										npcsel <= 0;
										extop <= 0;
									   regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 1;
										tusert <= 1;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 3;
										mddataop <= 0;
										exccode <= 0;
								end
								
								`DIVU: begin
										npcsel <= 0;
										extop <= 0;
									   regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 1;
										tusert <= 1;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 4;
										mddataop <= 0;
										exccode <= 0;
								end
								
								`MTLO: begin
										npcsel <= 0;
										extop <= 0;
									   regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 1;
										tusert <= 3;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 5;
										mddataop <= 0;
										exccode <= 0;
								end
								
								`MTHI: begin
										npcsel <= 0;
										extop <= 0;
									   regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 1;
										tusert <= 3;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 6;
										mddataop <= 0;
										exccode <= 0;
								end
								
								`MFLO: begin
										npcsel <= 0;
										extop <= 0;
									   regdst <= 1;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 3;
										regwrite <= 1;
										tusers <= 3;
										tusert <= 3;
										tnew <= 1;
										dataextop <= 0;
										mdcontrol <= 7;
										mddataop <= 0;
										exccode <= 0;
								end
								
								`MFHI: begin
										npcsel <= 0;
										extop <= 0;
									   regdst <= 1;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 3;
										regwrite <= 1;
										tusers <= 3;
										tusert <= 3;
										tnew <= 1;
										dataextop <= 0;
										mdcontrol <= 7;
										mddataop <= 1;
										exccode <= 0;
								end
								
								default: begin
										npcsel <= 0;
										extop <= 0;
										regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 3;
										tusert <= 3;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 10; //unknown
								end
						endcase
					end
					
					`ORI: begin
										npcsel <= 0;
										extop <= 0;
										regdst <= 0;
										alusrc <= 1;
										alucontrol <= 3;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 1;
										tusers <= 1;
										tusert <= 3;
										tnew <= 1;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
					end
					
					`ADDI: begin
										npcsel <= 0;
										extop <= 1;
										regdst <= 0;
										alusrc <= 1;
										alucontrol <= 1;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 1;
										tusers <= 1;
										tusert <= 3;
										tnew <= 1;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
					end
					
					`ANDI: begin
										npcsel <= 0;
										extop <= 0;
										regdst <= 0;
										alusrc <= 1;
										alucontrol <= 4;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 1;
										tusers <= 1;
										tusert <= 3;
										tnew <= 1;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
					end
					
					`LW: begin
										npcsel <= 0;
										extop <= 1;
										regdst <= 0;
										alusrc <= 1;
										alucontrol <= 7;
										memwrite <= 0;
										regwritesel <= 1;
										regwrite <= 1;
										tusers <= 1;
										tusert <= 3;
										tnew <= 2;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
					end
					
					`LH: begin
										npcsel <= 0;
										extop <= 1;
										regdst <= 0;
										alusrc <= 1;
										alucontrol <= 8;
										memwrite <= 0;
										regwritesel <= 1;
										regwrite <= 1;
										tusers <= 1;
										tusert <= 3;
										tnew <= 2;
										dataextop <= 4;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
					end
					
					`LB: begin
										npcsel <= 0;
										extop <= 1;
										regdst <= 0;
										alusrc <= 1;
										alucontrol <= 9;
										memwrite <= 0;
										regwritesel <= 1;
										regwrite <= 1;
										tusers <= 1;
										tusert <= 3;
										tnew <= 2;
										dataextop <= 2;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
					end
					
					`SW: begin
										npcsel <= 0;
										extop <= 1;
									   regdst <= 0;
										alusrc <= 1;
										alucontrol <= 10;
										memwrite <= 1;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 1;
										tusert <= 2;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
					end
					
					`SH: begin
										npcsel <= 0;
										extop <= 1;
									   regdst <= 0;
										alusrc <= 1;
										alucontrol <= 11;
										memwrite <= 2;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 1;
										tusert <= 2;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
					end
					
					`SB: begin
										npcsel <= 0;
										extop <= 1;
									   regdst <= 0;
										alusrc <= 1;
										alucontrol <= 12;
										memwrite <= 3;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 1;
										tusert <= 2;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
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
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
					end
					
					`BEQ: begin
										npcsel <= 1;
										extop <= 0;
										regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 0;
										tusert <= 0;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
					end
					
					`BNE: begin
										npcsel <= 4;
										extop <= 0;
										regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 0;
										tusert <= 0;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
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
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 0;
					end
					
					default: begin
										npcsel <= 0;
										extop <= 0;
										regdst <= 0;
										alusrc <= 0;
										alucontrol <= 0;
										memwrite <= 0;
										regwritesel <= 0;
										regwrite <= 0;
										tusers <= 3;
										tusert <= 3;
										tnew <= 0;
										dataextop <= 0;
										mdcontrol <= 0;
										mddataop <= 0;
										exccode <= 10;
					end
			endcase
	end
endmodule

