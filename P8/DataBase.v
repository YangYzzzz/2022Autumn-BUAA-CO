`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:32 11/09/2022 
// Design Name: 
// Module Name:    DataBase 
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
module DataBase(
    input clk,
    input reset,
    output [5:0] D_Op,
    output [5:0] D_Func,
    input [2:0] D_nPCSel,
    input [1:0] D_ExtOp,
    input [1:0] D_RegDst,
    input [1:0] D_ALUSrc,
    input [3:0] D_ALUControl,
	 input [2:0] D_DataExtOp,
    input [1:0] D_MemWrite,
    input [2:0] D_RegWriteSel,
    input D_RegWrite,
	 input [2:0] D_MDControl,
	 input D_MDDataOp,
    input [1:0] D_Tnew,
    input [1:0] D_ForwardRD1Mux_Sel,
    input [1:0] D_ForwardRD2Mux_Sel,
    input [1:0] E_ForwardALUAMux_Sel,
    input [1:0] E_ForwardALUBMux_Sel,
    input M_ForwardStoreDataMux_Sel,
    input F_PC_En,
    input F_DRegister_En,
    input D_EStallReset,
    output [1:0] E_Tnew,
    output E_RegWrite,
    output [4:0] E_A3,
    output [4:0] D_Rs,
    output [4:0] D_Rt,
    output [4:0] M_A3,
    output [1:0] M_Tnew,
    output M_RegWrite,
	 output [4:0] W_A3,
    output W_RegWrite,
    output [4:0] M_Rt,
    output [4:0] E_Rs,
    output [4:0] E_Rt,
	 output Start,
	 output Busy,
	 input [4:0] Cur_D_ExcCode,
	 input [5:0] HWInt,
	 input D_EXLClr,
	 input D_CP0Write,
	 input [31:0] F_Command,
	 output [31:0] F_PC,
	 output [3:0] M_Byteen,
	 output [31:0] M_ALURe,
	 output [31:0] M_TransformStoreData,
	 input [31:0] M_MemoryData
    ); 
	 wire [31:0] F_newPC, D_PC, D_V1, D_V2, D_RD1, D_RD2, E_PC, D_Imm32, E_Imm32, E_RD1, E_RD2, E_ALUA, E_TrueRD2, E_ALUB, E_ALURe, E_RDHI, E_RDLO, E_MDData,
					 M_MDData, M_RD2, M_ForwardData, M_LoadData, M_CP0Out, M_EPCOut, M_PC, W_RegWriteData, W_MemoryData,
					 W_LoadData, W_PC, W_ALURe, W_MDData, M_TrueRD2, W_CP0Out, D_Command;
	 wire [3:0] E_ALUControl;
	 wire [15:0] D_Imm16;
	 wire [25:0] D_Imm26;
	 wire [2:0] E_DataExtOp, M_DataExtOp, W_DataExtOp, E_MDControl, E_RegWriteSel, M_RegWriteSel, W_RegWriteSel;
	 wire [1:0] E_RegDst, E_ALUSrc, E_MemWrite, M_MemWrite;
	 wire D_Zero, E_MDDataOp, Req, D_BD, E_BD, M_BD, E_EXLClr, M_EXLClr, M_CP0Write, E_CP0Write; //tbReq
	 wire [4:0] F_ExcCode, Raw_D_ExcCode, D_ExcCode, E_ExcCode, M_ExcCode, Cur_E_ExcCode, Raw_E_ExcCode, D_Rd, E_Rd, M_Rd;
	 ////////////////////////////////////////////////////////////////////
	F_PC uutF_PC(.clk(clk), .reset(reset), .en(F_PC_En), .F_newPC(F_newPC), .F_PC(F_PC), .F_ExcCode(F_ExcCode), .Req(Req), .M_EXLClr(M_EXLClr),
						.EPCOut(M_EPCOut));
	F_DRegister uutF_DRegister(.clk(clk), .reset(reset), .en(F_DRegister_En), .F_PC(F_PC), .D_PC(D_PC), .F_ExcCode(F_ExcCode), .Raw_D_ExcCode(Raw_D_ExcCode), .Req(Req), 
										.EXLClr(M_EXLClr), .EPCOut(M_EPCOut), .D_nPCSel(D_nPCSel), .D_BD(D_BD), .F_Command(F_Command), .D_Command(D_Command));
	////////////////////////////////////////////////////////////////////
	D_Splitter uutD_Splitter(.D_Command(D_Command), .D_Rs(D_Rs), .D_Rt(D_Rt), .D_Rd(D_Rd), .D_Op(D_Op), .D_Func(D_Func), .D_Imm16(D_Imm16), .D_Imm26(D_Imm26));
	D_GRF uutD_GRF(.clk(clk), .reset(reset), .D_A1(D_Rs), .D_A2(D_Rt), .W_RegWriteData(W_RegWriteData), .W_RegWrite(W_RegWrite), .W_A3(W_A3), .D_V1(D_V1), .D_V2(D_V2));
	D_ForwardRD1Mux uutD_ForwardRD1Mux(.D_V1(D_V1), .M_ForwardRD1(M_ForwardData), .W_ForwardRD1(W_RegWriteData), .D_TrueRD1(D_RD1), .D_ForwardRD1Mux_Sel(D_ForwardRD1Mux_Sel));
	D_ForwardRD2Mux uutD_ForwardRD2Mux(.D_V2(D_V2), .M_ForwardRD2(M_ForwardData), .W_ForwardRD2(W_RegWriteData), .D_TrueRD2(D_RD2), .D_ForwardRD2Mux_Sel(D_ForwardRD2Mux_Sel));
	D_ExcSelMux uutD_ExcSelMux(.Raw_D_ExcCode(Raw_D_ExcCode), .Cur_D_ExcCode(Cur_D_ExcCode), .D_ExcCode(D_ExcCode));
	D_Zero uutD_Zero(.D_RD1(D_RD1), .D_RD2(D_RD2), .D_Zero(D_Zero));
	D_NPC uutD_NPC(.D_Imm16(D_Imm16), .D_Imm26(D_Imm26), .D_RD1(D_RD1), .D_PC(D_PC), .F_PC(F_PC), .F_newPC(F_newPC), .D_nPCSel(D_nPCSel), .D_Zero(D_Zero));
	D_ERegister uutD_ERegister(.D_PC(D_PC), .E_PC(E_PC), .D_RegDst(D_RegDst), .D_ALUSrc(D_ALUSrc), .D_ALUControl(D_ALUControl), .D_MemWrite(D_MemWrite), .D_RegWriteSel(D_RegWriteSel), 
										.D_RegWrite(D_RegWrite), .D_Tnew(D_Tnew), .E_RegDst(E_RegDst), .E_ALUSrc(E_ALUSrc), .E_ALUControl(E_ALUControl), .E_MemWrite(E_MemWrite),
										.E_RegWriteSel(E_RegWriteSel), .E_RegWrite(E_RegWrite), .E_Tnew(E_Tnew), .D_RD1(D_RD1), .D_RD2(D_RD2), .D_Imm32(D_Imm32), .D_Rs(D_Rs), .D_Rt(D_Rt), 
										.D_Rd(D_Rd), .E_RD1(E_RD1), .E_RD2(E_RD2), .E_Imm32(E_Imm32), .E_Rs(E_Rs), .E_Rt(E_Rt), .E_Rd(E_Rd), .D_MDControl(D_MDControl), .E_MDControl(E_MDControl),
										.clk(clk), .reset(reset), .D_EStallReset(D_EStallReset), .D_DataExtOp(D_DataExtOp), .E_DataExtOp(E_DataExtOp), .D_MDDataOp(D_MDDataOp),
										.E_MDDataOp(E_MDDataOp), .D_ExcCode(D_ExcCode), .Raw_E_ExcCode(Raw_E_ExcCode), .D_BD(D_BD), .E_BD(E_BD), .Req(Req),
										.EXLClr(M_EXLClr), .EPCOut(M_EPCOut), .D_EXLClr(D_EXLClr), .E_EXLClr(E_EXLClr), .D_CP0Write(D_CP0Write), .E_CP0Write(E_CP0Write));
	D_EXT uutD_EXT(.D_Imm16(D_Imm16), .D_ExtOp(D_ExtOp), .D_Imm32(D_Imm32));
	////////////////////////////////////////////////////////////////////
	E_ForwardALUAMux uutE_ForwardALUAMux(.E_RD1(E_RD1), .W_ForwardALUA(W_RegWriteData), .M_ForwardALUA(M_ForwardData), .E_TrueALUA(E_ALUA), .E_ForwardALUAMux_Sel(E_ForwardALUAMux_Sel));
	E_ForwardALUBMux uutE_ForwardALUBMux(.E_RD2(E_RD2), .W_ForwardALUB(W_RegWriteData), .M_ForwardALUB(M_ForwardData), .E_TrueRD2(E_TrueRD2), .E_ForwardALUBMux_Sel(E_ForwardALUBMux_Sel));
	E_ALUSrcMux uutE_ALUSrcMux(.E_RD2(E_TrueRD2), .E_Imm32(E_Imm32), .E_ALUSrc(E_ALUSrc), .E_Rt(E_Rt), .E_ALUB(E_ALUB));
	E_ALU uutE_ALU(.E_ALUA(E_ALUA), .E_ALUB(E_ALUB), .E_ALUControl(E_ALUControl), .E_ALURe(E_ALURe), .Cur_E_ExcCode(Cur_E_ExcCode));
	E_RegDstMux uutE_RegDstMux(.E_RegDst(E_RegDst), .E_Rt(E_Rt), .E_Rd(E_Rd), .E_A3(E_A3));
	E_ExcSelMux uutE_ExcSelMux(.Raw_E_ExcCode(Raw_E_ExcCode), .Cur_E_ExcCode(Cur_E_ExcCode), .E_ExcCode(E_ExcCode));
	E_MRegister uutE_MRegister(.E_PC(E_PC), .E_MemWrite(E_MemWrite), .E_RegWrite(E_RegWrite), .E_Tnew(E_Tnew), .E_RegWriteSel(E_RegWriteSel), .E_ALURe(E_ALURe), .E_RD2(E_TrueRD2), 
										.E_Rt(E_Rt), .E_A3(E_A3), .M_PC(M_PC), .M_MemWrite(M_MemWrite), .M_RegWrite(M_RegWrite), .M_Tnew(M_Tnew), .M_RegWriteSel(M_RegWriteSel), .M_ALURe(M_ALURe),
										.M_RD2(M_RD2), .M_Rt(M_Rt), .M_A3(M_A3), .clk(clk), .reset(reset), .E_DataExtOp(E_DataExtOp), .M_DataExtOp(M_DataExtOp), .E_MDData(E_MDData), 
										.M_MDData(M_MDData), .E_ExcCode(E_ExcCode), .M_ExcCode(M_ExcCode), .M_Rd(M_Rd), .E_Rd(E_Rd), .E_BD(E_BD), .M_BD(M_BD), .Req(Req),
										.EPCOut(M_EPCOut), .E_EXLClr(E_EXLClr), .M_EXLClr(M_EXLClr), .E_CP0Write(E_CP0Write), .M_CP0Write(M_CP0Write));
	E_MD uutE_MD(.E_D1(E_ALUA), .E_D2(E_TrueRD2), .E_RDLO(E_RDLO), .E_RDHI(E_RDHI), .clk(clk), .reset(reset), .Start(Start), .Busy(Busy), .E_MDControl(E_MDControl), .Req(Req)); 
	E_MDDataMux uutE_MDDataMux(.E_RDLO(E_RDLO), .E_RDHI(E_RDHI), .E_MDData(E_MDData), .E_MDDataOp(E_MDDataOp));
	////////////////////////////////////////////////////////////////////
	M_ForwardStoreDataMux uutM_ForwardStoreDataMux(.W_ForwardStoreData(W_RegWriteData), .M_RD2(M_RD2), .M_TrueRD2(M_TrueRD2), .M_ForwardStoreDataMux_Sel(M_ForwardStoreDataMux_Sel));
	M_RegWriteSelMux uutM_RegWriteSelMux(.M_ALURe(M_ALURe), .M_PC(M_PC), .M_RegWriteSel(M_RegWriteSel), .M_ForwardData(M_ForwardData), .M_MDData(M_MDData));
	M_WRegister uutM_WRegister(.clk(clk), .reset(reset), .M_PC(M_PC), .M_RegWrite(M_RegWrite), .M_RegWriteSel(M_RegWriteSel), .M_MemoryData(M_MemoryData), .M_ALURe(M_ALURe), .M_A3(M_A3), 
									   .W_PC(W_PC), .W_RegWrite(W_RegWrite), .W_RegWriteSel(W_RegWriteSel), .W_MemoryData(W_MemoryData), .W_ALURe(W_ALURe), .W_A3(W_A3), .M_MDData(M_MDData),
										.W_MDData(W_MDData), .M_CP0Out(M_CP0Out), .W_CP0Out(W_CP0Out), .Req(Req), .M_DataExtOp(M_DataExtOp), .W_DataExtOp(W_DataExtOp));
	M_ByteenExt uutM_ByteenExt(.M_Byteen(M_Byteen), .M_StoreAddr(M_ALURe), .M_MemWrite(M_MemWrite), .M_TrueStoreData(M_TrueRD2), .M_TransformStoreData(M_TransformStoreData), .Req(Req));
	M_CP0 uutM_CP0(.clk(clk), .reset(reset), .en(M_CP0Write), .CP0Add(M_Rd), .CP0In(M_TrueRD2), .CP0Out(M_CP0Out), .VPC(M_PC), .BDIn(M_BD), .ExcCodeIn(M_ExcCode), .HWInt(HWInt),
						.EXLClr(M_EXLClr), .EPCOut(M_EPCOut), .Req(Req));  //CP0Out
	////////////////////////////////////////////////////////////////////									
	W_RegWriteSelMux uutW_RegWriteSelMux(.W_RegWriteSel(W_RegWriteSel), .W_ALURe(W_ALURe), .W_LoadData(W_LoadData), .W_PC(W_PC), .W_RegWriteData(W_RegWriteData), .W_MDData(W_MDData), .W_CP0Out(W_CP0Out));
	W_DataExt uutW_DataExt(.W_StoreAddr(W_ALURe), .W_MemoryData(W_MemoryData), .W_DataExtOp(W_DataExtOp), .W_LoadData(W_LoadData));
endmodule

