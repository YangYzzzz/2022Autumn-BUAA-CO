`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:47 11/03/2022 
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
    input [2:0] D_ExtOp,
    input [2:0] D_RegDst,
    input [2:0] D_ALUSrc,
    input [2:0] D_ALUControl,
    input [2:0] D_MemWrite,
    input [2:0] D_RegWriteSel,
    input [2:0] D_RegWrite,
	 input [2:0] D_DataExtOp,
	 input D_Check,
    input [1:0] D_Tnew,
    input [1:0] D_ForwardRD1Mux_Sel,
    input [1:0] D_ForwardRD2Mux_Sel,
    input [1:0] E_ForwardALUAMux_Sel,
    input [1:0] E_ForwardALUBMux_Sel,
    input M_ForwardStoreDataMux_Sel,
    input F_PC_En,
    input F_DRegister_En,
    input D_ERegister_StallReset,
    output [1:0] E_Tnew,
    output [2:0] E_RegWrite,
    output [4:0] E_A3,
    output [4:0] D_Rs,
    output [4:0] D_Rt,
    output [4:0] M_A3,
    output [1:0] M_Tnew,
    output [2:0] M_RegWrite,
	 output [4:0] W_A3,
    output [2:0] W_RegWrite,
    output [4:0] M_Rt,
    output [4:0] E_Rs,
    output [4:0] E_Rt
    );
	 wire [31:0] F_newPC, F_PC, F_Command, D_Command, D_PC4, D_V1, D_V2, D_RD1, D_RD2, E_PC8, D_Imm32, E_Imm32, E_RD1, E_RD2, E_ALUA, E_TrueRD2, E_ALUB, E_ALURe,
					 M_PC8, M_ALURe, M_RD2, M_LoadData, M_TrueStoreData, M_ForwardData, W_ALURe, W_LoadData, W_RegWriteData, W_PC8, M_MemoryData;
	 wire [4:0]  D_Rd, E_Rd; 
	 wire [15:0] D_Imm16;
	 wire [25:0] D_Imm26;
	 wire [2:0] E_ALUControl, E_MemWrite, M_MemWrite, E_RegDst, E_ALUSrc, E_RegWriteSel, M_RegWriteSel, W_RegWriteSel, E_DataExtOp, M_DataExtOp;
	 wire D_Zero, D_Flag, E_Flag, E_FlagALU, E_Check, M_Check;
	 ////////////////////////////////////////////////////////////////////
	F_PC uutF_PC(.clk(clk), .reset(reset), .en(F_PC_En), .F_newPC(F_newPC), .F_PC(F_PC)); 
	F_IM uutF_IM(.F_PC(F_PC), .F_Command(F_Command));
	F_DRegister uutF_DRegister(.clk(clk), .reset(reset), .en(F_DRegister_En), .F_Command(F_Command), .F_PC(F_PC), .D_Command(D_Command), .D_PC4(D_PC4), .Check(D_Check), .Flag(D_Flag));
	////////////////////////////////////////////////////////////////////
	D_Splitter uutD_Splitter(.D_Command(D_Command), .D_Rs(D_Rs), .D_Rt(D_Rt), .D_Rd(D_Rd), .D_Op(D_Op), .D_Func(D_Func), .D_Imm16(D_Imm16), .D_Imm26(D_Imm26));
	D_GRF uutGRF(.clk(clk), .reset(reset), .D_A1(D_Rs), .D_A2(D_Rt), .W_RegWriteData(W_RegWriteData), .W_RegWrite(W_RegWrite), .W_A3(W_A3), .D_V1(D_V1), .D_V2(D_V2), .W_PC8(W_PC8));
	D_ForwardRD1Mux uutD_ForwardRD1Mux(.D_V1(D_V1), .M_ForwardRD1(M_ForwardData), .W_ForwardRD1(W_RegWriteData), .D_TrueRD1(D_RD1), .D_ForwardRD1Mux_Sel(D_ForwardRD1Mux_Sel));
	D_ForwardRD2Mux uutD_ForwardRD2Mux(.D_V2(D_V2), .M_ForwardRD2(M_ForwardData), .W_ForwardRD2(W_RegWriteData), .D_TrueRD2(D_RD2), .D_ForwardRD2Mux_Sel(D_ForwardRD2Mux_Sel));
	D_CMP uutD_CMP(.D_RD1(D_RD1), .D_RD2(D_RD2), .D_Zero(D_Zero), .D_Flag(D_Flag));
	D_NPC uutD_NPC(.D_Imm16(D_Imm16), .D_Imm26(D_Imm26), .D_RD1(D_RD1), .D_PC4(D_PC4), .F_PC(F_PC), .F_newPC(F_newPC), .D_nPCSel(D_nPCSel), .D_Zero(D_Zero), .D_Flag(D_Flag));
	D_ERegister uutD_ERegister(.D_PC4(D_PC4), .E_PC8(E_PC8), .D_RegDst(D_RegDst), .D_ALUSrc(D_ALUSrc), .D_ALUControl(D_ALUControl), .D_MemWrite(D_MemWrite), .D_RegWriteSel(D_RegWriteSel), 
										.D_RegWrite(D_RegWrite), .D_Tnew(D_Tnew), .E_RegDst(E_RegDst), .E_ALUSrc(E_ALUSrc), .E_ALUControl(E_ALUControl), .E_MemWrite(E_MemWrite),
										.E_RegWriteSel(E_RegWriteSel), .E_RegWrite(E_RegWrite), .E_Tnew(E_Tnew), .D_RD1(D_RD1), .D_RD2(D_RD2), .D_Imm32(D_Imm32), .D_Rs(D_Rs), .D_Rt(D_Rt), 
										.D_Rd(D_Rd), .E_RD1(E_RD1), .E_RD2(E_RD2), .E_Imm32(E_Imm32), .E_Rs(E_Rs), .E_Rt(E_Rt), .E_Rd(E_Rd), .D_Flag(D_Flag), .E_Flag(E_Flag),
										.clk(clk), .reset(reset), .D_EStallReset(D_ERegister_StallReset), .D_DataExtOp(D_DataExtOp), .E_DataExtOp(E_DataExtOp), .D_Check(D_Check), .E_Check(E_Check));
	D_EXT uutD_EXT(.D_Imm16(D_Imm16), .D_ExtOp(D_ExtOp), .D_Imm32(D_Imm32));
	////////////////////////////////////////////////////////////////////
	E_ForwardALUAMux uutE_ForwardALUAMux(.E_RD1(E_RD1), .W_ForwardALUA(W_RegWriteData), .M_ForwardALUA(M_ForwardData), .E_TrueALUA(E_ALUA), .E_ForwardALUAMux_Sel(E_ForwardALUAMux_Sel));
	E_ForwardALUBMux uutE_ForwardALUBMux(.E_RD2(E_RD2), .W_ForwardALUB(W_RegWriteData), .M_ForwardALUB(M_ForwardData), .E_TrueRD2(E_TrueRD2), .E_ForwardALUBMux_Sel(E_ForwardALUBMux_Sel));
	E_ALUSrcMux uutE_ALUSrcMux(.E_RD2(E_TrueRD2), .E_Imm32(E_Imm32), .E_ALUSrc(E_ALUSrc), .E_Rt(E_Rt), .E_ALUB(E_ALUB));
	E_ALU uutE_ALU(.E_ALUA(E_ALUA), .E_ALUB(E_ALUB), .E_ALUControl(E_ALUControl), .E_ALURe(E_ALURe), .E_FlagALU(E_FlagALU));
	E_RegDstMux uutE_RegDstMux(.E_RegDst(E_RegDst), .E_Rt(E_Rt), .E_Rd(E_Rd), .E_A3(E_A3), .E_Flag(E_Flag), .E_FlagALU(E_FlagALU));
	E_MRegister uutE_MRegister(.E_PC8(E_PC8), .E_MemWrite(E_MemWrite), .E_RegWrite(E_RegWrite), .E_Tnew(E_Tnew), .E_RegWriteSel(E_RegWriteSel), .E_ALURe(E_ALURe), .E_RD2(E_TrueRD2), 
										.E_Rt(E_Rt), .E_A3(E_A3), .M_PC8(M_PC8), .M_MemWrite(M_MemWrite), .M_RegWrite(M_RegWrite), .M_Tnew(M_Tnew), .M_RegWriteSel(M_RegWriteSel), .M_ALURe(M_ALURe),
										.M_RD2(M_RD2), .M_Rt(M_Rt), .M_A3(M_A3), .clk(clk), .reset(reset), .E_DataExtOp(E_DataExtOp), .M_DataExtOp(M_DataExtOp), .E_Check(E_Check), .M_Check(M_Check));
	////////////////////////////////////////////////////////////////////
	M_ForwardStoreDataMux uutM_ForwardStoreDataMux(.W_ForwardStoreData(W_RegWriteData), .M_StoreData(M_RD2), .M_TrueStoreData(M_TrueStoreData),
																  .M_ForwardStoreDataMux_Sel(M_ForwardStoreDataMux_Sel));
	M_DM uutM_DM(.clk(clk), .reset(reset), .M_StoreAddr(M_ALURe), .M_StoreData(M_TrueStoreData), .M_MemWrite(M_MemWrite), .M_MemoryData(M_MemoryData), .M_PC8(M_PC8));
	M_DataExt uutM_DataExt(.M_StoreAddr(M_ALURe), .M_MemoryData(M_MemoryData), .M_DataExtOp(M_DataExtOp), .M_LoadData(M_LoadData));
	M_RegWriteSelMux uutM_RegWriteSelMux(.M_ALURe(M_ALURe), .M_PC8(M_PC8), .M_RegWriteSel(M_RegWriteSel), .M_ForwardData(M_ForwardData));
	M_WRegister uutM_WRegister(.clk(clk), .reset(reset), .M_PC8(M_PC8), .M_RegWrite(M_RegWrite), .M_RegWriteSel(M_RegWriteSel), .M_LoadData(M_LoadData), .M_ALURe(M_ALURe), .M_A3(M_A3), 
									   .W_PC8(W_PC8), .W_RegWrite(W_RegWrite), .W_RegWriteSel(W_RegWriteSel), .W_LoadData(W_LoadData), .W_ALURe(W_ALURe), .W_A3(W_A3));
	////////////////////////////////////////////////////////////////////									
	W_RegWriteSelMux uutW_RegWriteSelMux(.W_RegWriteSel(W_RegWriteSel), .W_ALURe(W_ALURe), .W_LoadData(W_LoadData), .W_PC8(W_PC8), .W_RegWriteData(W_RegWriteData));
endmodule
