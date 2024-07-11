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
    input [3:0] D_nPCSel,
    input [3:0] D_ExtOp,
    input [3:0] D_RegDst,
    input [3:0] D_ALUSrc,
    input [3:0] D_ALUControl,
	 input [3:0] D_DataExtOp,
    input [3:0] D_MemWrite,
    input [3:0] D_RegWriteSel,
    input D_RegWrite,
	 input [3:0] D_MDControl,
	 input [3:0] D_MDDataOp,
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
    output E_RegWrite,
    output [4:0] E_A3,
    output [4:0] D_Rs,
    output [4:0] D_Rt,
    output [4:0] M_NewA3,
    output [1:0] M_Tnew,
    output M_RegWrite,
	 output [4:0] W_A3,
    output W_RegWrite,
    output [4:0] M_Rt,
    output [4:0] E_Rs,
    output [4:0] E_Rt,
	 output [31:0] F_PC,
	 input [31:0] F_Command,
	 output [31:0] M_ALURe,
	 output [31:0] M_TransformStoreData,
	 input [31:0] M_MemoryData,
	 output [31:0] M_PC8,
	 output [31:0] W_RegWriteData,
	 output [31:0] W_PC8,
	 output [3:0] M_Byteen,
	 output Start,
	 output Busy,
	 input D_Check,
	 output E_Check
    );  
	 wire [31:0] F_newPC, D_Command, D_PC4, D_V1, D_V2, D_RD1, D_RD2, E_PC8, D_Imm32, E_Imm32, E_RD1, E_RD2, E_ALUA, E_TrueRD2, E_ALUB, E_ALURe, E_RDHI, E_RDLO, E_MDData,
					 M_MDData, M_RD2, M_ForwardData, M_LoadData, W_LoadData, W_ALURe, W_MDData, M_TrueStoreData;
	 wire [4:0]  D_Rd, E_Rd, M_A3; 
	 wire [15:0] D_Imm16;
	 wire [25:0] D_Imm26;
	 wire [3:0] E_ALUControl, E_DataExtOp, M_DataExtOp, E_MDControl, E_RegDst, E_ALUSrc, E_RegWriteSel, M_RegWriteSel, W_RegWriteSel, E_MemWrite, M_MemWrite, E_MDDataOp;
	 wire D_Zero, D_FlagJAL, E_FlagJAL, E_FlagALU, M_Check;
	 ////////////////////////////////////////////////////////////////////
	F_PC uutF_PC(.clk(clk), .reset(reset), .en(F_PC_En), .F_newPC(F_newPC), .F_PC(F_PC)); 
	F_DRegister uutF_DRegister(.clk(clk), .reset(reset), .en(F_DRegister_En), .F_Command(F_Command), .F_PC(F_PC), .D_Command(D_Command), .D_PC4(D_PC4));
	////////////////////////////////////////////////////////////////////
	D_Splitter uutD_Splitter(.D_Command(D_Command), .D_Rs(D_Rs), .D_Rt(D_Rt), .D_Rd(D_Rd), .D_Op(D_Op), .D_Func(D_Func), .D_Imm16(D_Imm16), .D_Imm26(D_Imm26));
	D_GRF uutGRF(.clk(clk), .reset(reset), .D_A1(D_Rs), .D_A2(D_Rt), .W_RegWriteData(W_RegWriteData), .W_RegWrite(W_RegWrite), .W_A3(W_A3), .D_V1(D_V1), .D_V2(D_V2), .W_PC8(W_PC8));
	D_ForwardRD1Mux uutD_ForwardRD1Mux(.D_V1(D_V1), .M_ForwardRD1(M_ForwardData), .W_ForwardRD1(W_RegWriteData), .D_TrueRD1(D_RD1), .D_ForwardRD1Mux_Sel(D_ForwardRD1Mux_Sel));
	D_ForwardRD2Mux uutD_ForwardRD2Mux(.D_V2(D_V2), .M_ForwardRD2(M_ForwardData), .W_ForwardRD2(W_RegWriteData), .D_TrueRD2(D_RD2), .D_ForwardRD2Mux_Sel(D_ForwardRD2Mux_Sel));
	D_Zero uutD_Zero(.D_RD1(D_RD1), .D_RD2(D_RD2), .D_Zero(D_Zero), .D_FlagJAL(D_FlagJAL));
	D_NPC uutD_NPC(.D_Imm16(D_Imm16), .D_Imm26(D_Imm26), .D_RD1(D_RD1), .D_PC4(D_PC4), .F_PC(F_PC), .F_newPC(F_newPC), .D_nPCSel(D_nPCSel), .D_Zero(D_Zero), .D_FlagJAL(D_FlagJAL), .D_RD2(D_RD2));
	D_ERegister uutD_ERegister(.D_PC4(D_PC4), .E_PC8(E_PC8), .D_RegDst(D_RegDst), .D_ALUSrc(D_ALUSrc), .D_ALUControl(D_ALUControl), .D_MemWrite(D_MemWrite), .D_RegWriteSel(D_RegWriteSel), 
										.D_RegWrite(D_RegWrite), .D_Tnew(D_Tnew), .E_RegDst(E_RegDst), .E_ALUSrc(E_ALUSrc), .E_ALUControl(E_ALUControl), .E_MemWrite(E_MemWrite),
										.E_RegWriteSel(E_RegWriteSel), .E_RegWrite(E_RegWrite), .E_Tnew(E_Tnew), .D_RD1(D_RD1), .D_RD2(D_RD2), .D_Imm32(D_Imm32), .D_Rs(D_Rs), .D_Rt(D_Rt), 
										.D_Rd(D_Rd), .E_RD1(E_RD1), .E_RD2(E_RD2), .E_Imm32(E_Imm32), .E_Rs(E_Rs), .E_Rt(E_Rt), .E_Rd(E_Rd), .D_MDControl(D_MDControl), .E_MDControl(E_MDControl),
										.clk(clk), .reset(reset), .D_EStallReset(D_ERegister_StallReset), .D_DataExtOp(D_DataExtOp), .E_DataExtOp(E_DataExtOp), .D_MDDataOp(D_MDDataOp),
										.E_MDDataOp(E_MDDataOp), .D_Check(D_Check), .E_Check(E_Check), .D_FlagJAL(D_FlagJAL), .E_FlagJAL(E_FlagJAL));
	D_EXT uutD_EXT(.D_Imm16(D_Imm16), .D_ExtOp(D_ExtOp), .D_Imm32(D_Imm32));
	////////////////////////////////////////////////////////////////////
	E_ForwardALUAMux uutE_ForwardALUAMux(.E_RD1(E_RD1), .W_ForwardALUA(W_RegWriteData), .M_ForwardALUA(M_ForwardData), .E_TrueALUA(E_ALUA), .E_ForwardALUAMux_Sel(E_ForwardALUAMux_Sel));
	E_ForwardALUBMux uutE_ForwardALUBMux(.E_RD2(E_RD2), .W_ForwardALUB(W_RegWriteData), .M_ForwardALUB(M_ForwardData), .E_TrueRD2(E_TrueRD2), .E_ForwardALUBMux_Sel(E_ForwardALUBMux_Sel));
	E_ALUSrcMux uutE_ALUSrcMux(.E_RD2(E_TrueRD2), .E_Imm32(E_Imm32), .E_ALUSrc(E_ALUSrc), .E_Rt(E_Rt), .E_ALUB(E_ALUB));
	E_ALU uutE_ALU(.E_ALUA(E_ALUA), .E_ALUB(E_ALUB), .E_ALUControl(E_ALUControl), .E_ALURe(E_ALURe), .E_FlagALU(E_FlagALU));
	E_RegDstMux uutE_RegDstMux(.E_RegDst(E_RegDst), .E_Rt(E_Rt), .E_Rd(E_Rd), .E_A3(E_A3), .E_FlagJAL(E_FlagJAL), .E_FlagALU(E_FlagALU));
	E_MRegister uutE_MRegister(.E_PC8(E_PC8), .E_MemWrite(E_MemWrite), .E_RegWrite(E_RegWrite), .E_Tnew(E_Tnew), .E_RegWriteSel(E_RegWriteSel), .E_ALURe(E_ALURe), .E_RD2(E_TrueRD2), 
										.E_Rt(E_Rt), .E_A3(E_A3), .M_PC8(M_PC8), .M_MemWrite(M_MemWrite), .M_RegWrite(M_RegWrite), .M_Tnew(M_Tnew), .M_RegWriteSel(M_RegWriteSel), .M_ALURe(M_ALURe),
										.M_RD2(M_RD2), .M_Rt(M_Rt), .M_A3(M_A3), .clk(clk), .reset(reset), .E_DataExtOp(E_DataExtOp), .M_DataExtOp(M_DataExtOp), .E_MDData(E_MDData), 
										.M_MDData(M_MDData), .E_Check(E_Check), .M_Check(M_Check));
	E_MD uutE_MD(.E_D1(E_ALUA), .E_D2(E_TrueRD2), .E_RDLO(E_RDLO), .E_RDHI(E_RDHI), .clk(clk), .reset(reset), .Start(Start), .Busy(Busy), .E_MDControl(E_MDControl)); //alusrc = 0
	E_MDDataMux uutE_MDDataMux(.E_RDLO(E_RDLO), .E_RDHI(E_RDHI), .E_MDData(E_MDData), .E_MDDataOp(E_MDDataOp));
	////////////////////////////////////////////////////////////////////
	M_ForwardStoreDataMux uutM_ForwardStoreDataMux(.W_ForwardStoreData(W_RegWriteData), .M_StoreData(M_RD2), .M_TrueStoreData(M_TrueStoreData),
																  .M_ForwardStoreDataMux_Sel(M_ForwardStoreDataMux_Sel));
	M_RegWriteSelMux uutM_RegWriteSelMux(.M_ALURe(M_ALURe), .M_PC8(M_PC8), .M_RegWriteSel(M_RegWriteSel), .M_ForwardData(M_ForwardData), .M_MDData(M_MDData));
	M_WRegister uutM_WRegister(.clk(clk), .reset(reset), .M_PC8(M_PC8), .M_RegWrite(M_RegWrite), .M_RegWriteSel(M_RegWriteSel), .M_LoadData(M_LoadData), .M_ALURe(M_ALURe), .M_A3(M_NewA3), 
									   .W_PC8(W_PC8), .W_RegWrite(W_RegWrite), .W_RegWriteSel(W_RegWriteSel), .W_LoadData(W_LoadData), .W_ALURe(W_ALURe), .W_A3(W_A3), .M_MDData(M_MDData),
										.W_MDData(W_MDData));
	M_ByteenExt uutM_ByteenExt(.M_Byteen(M_Byteen), .M_StoreAddr(M_ALURe), .M_MemWrite(M_MemWrite), .M_TrueStoreData(M_TrueStoreData), .M_TransformStoreData(M_TransformStoreData));
	M_DataExt uutM_DataExt(.M_StoreAddr(M_ALURe), .M_MemoryData(M_MemoryData), .M_DataExtOp(M_DataExtOp), .M_LoadData(M_LoadData));
	 M_RegSel uutM_RegSel(.M_A3(M_A3), .M_RD2(M_TrueStoreData), .M_LoadData(M_LoadData), .M_Check(M_Check), .M_NewA3(M_NewA3));
	////////////////////////////////////////////////////////////////////									
	W_RegWriteSelMux uutW_RegWriteSelMux(.W_RegWriteSel(W_RegWriteSel), .W_ALURe(W_ALURe), .W_LoadData(W_LoadData), .W_PC8(W_PC8), .W_RegWriteData(W_RegWriteData), .W_MDData(W_MDData));
endmodule

