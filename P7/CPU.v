`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:53:17 11/17/2022 
// Design Name: 
// Module Name:    CPU 
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
module CPU(
    input clk,
    input reset,
	 output [31:0] macroscopic_pc,
	 
    output [31:0] F_PC,
    input [31:0] F_Command,
	 
	 output [31:0] M_ALURe,
	 input [31:0] M_MemoryData,
    output [31:0] M_TransformStoreData,
    output [3:0] M_Byteen,
    output [31:0] M_PC,

    output W_RegWrite,
    output [4:0] W_A3,
    output [31:0] W_RegWriteData,
    output [31:0] W_PC,
	 
	 input [5:0] HWInt
    );
	 wire D_RegWrite, M_ForwardStoreDataMux_Sel, F_PC_En, F_DRegister_En, D_EStallReset, E_RegWrite, M_RegWrite, D_MDDataOp, Start, Busy, D_EXLClr, D_CP0Write, isPI, E_CP0Write, M_CP0Write,
	 isPICommand;
    wire [5:0] D_Op, D_Func;
    wire [1:0] D_MemWrite, D_ExtOp, D_RegDst, D_ALUSrc, D_Tnew, D_ForwardRD1Mux_Sel, D_ForwardRD2Mux_Sel, E_ForwardALUAMux_Sel, E_ForwardALUBMux_Sel, D_TuseRs, D_TuseRt,
					E_Tnew, M_Tnew;
    wire [2:0] D_DataExtOp, D_MDControl, D_nPCSel, D_RegWriteSel;
	 wire [3:0] D_ALUControl;
	 wire [4:0] E_A3, D_Rs, D_Rt, M_A3, M_Rt, E_Rs, E_Rt, Cur_D_ExcCode;
	 DataBase uutDataBase(.clk(clk), .reset(reset), .D_Op(D_Op), .D_Func(D_Func), .D_nPCSel(D_nPCSel), .D_ExtOp(D_ExtOp), .D_RegDst(D_RegDst), .D_ALUSrc(D_ALUSrc), 
								.D_ALUControl(D_ALUControl), .D_MemWrite(D_MemWrite), .D_RegWriteSel(D_RegWriteSel), .D_RegWrite(D_RegWrite), .D_DataExtOp(D_DataExtOp),
								.D_Tnew(D_Tnew), .D_ForwardRD1Mux_Sel(D_ForwardRD1Mux_Sel), .D_ForwardRD2Mux_Sel(D_ForwardRD2Mux_Sel), .E_ForwardALUAMux_Sel(E_ForwardALUAMux_Sel),
								.E_ForwardALUBMux_Sel(E_ForwardALUBMux_Sel), .M_ForwardStoreDataMux_Sel(M_ForwardStoreDataMux_Sel), .F_PC_En(F_PC_En), .F_DRegister_En(F_DRegister_En), 
								.D_EStallReset(D_EStallReset), .E_Tnew(E_Tnew), .E_RegWrite(E_RegWrite), .E_A3(E_A3), .D_Rs(D_Rs), .D_Rt(D_Rt), .M_A3(M_A3), 
								.M_Tnew(M_Tnew), .M_RegWrite(M_RegWrite), .W_A3(W_A3), .W_RegWrite(W_RegWrite), .M_Rt(M_Rt), .E_Rs(E_Rs), .E_Rt(E_Rt), .F_PC(F_PC), .F_Command(F_Command),
								.M_ALURe(M_ALURe), .M_TransformStoreData(M_TransformStoreData), .M_MemoryData(M_MemoryData), .M_PC(M_PC), .W_RegWriteData(W_RegWriteData), .D_EXLClr(D_EXLClr),
								.W_PC(W_PC), .M_Byteen(M_Byteen), .D_MDControl(D_MDControl), .D_MDDataOp(D_MDDataOp), .Start(Start), .Busy(Busy), .macroscopic_pc(macroscopic_pc), .HWInt(HWInt),
								.D_CP0Write(D_CP0Write), .Cur_D_ExcCode(Cur_D_ExcCode), .isPI(isPI), .E_CP0Write(E_CP0Write), .M_CP0Write(M_CP0Write));
	 MainControl uutMainControl(.D_Op(D_Op), .D_Func(D_Func), .D_nPCSel(D_nPCSel), .D_ExtOp(D_ExtOp), .D_RegDst(D_RegDst), .D_ALUSrc(D_ALUSrc), .D_ALUControl(D_ALUControl), 
										 .D_MemWrite(D_MemWrite), .D_RegWriteSel(D_RegWriteSel), .D_RegWrite(D_RegWrite), .D_TuseRs(D_TuseRs), .D_TuseRt(D_TuseRt), .D_Tnew(D_Tnew), 
										 .D_DataExtOp(D_DataExtOp), .D_MDControl(D_MDControl), .D_MDDataOp(D_MDDataOp), .D_EXLClr(D_EXLClr), .D_Rs(D_Rs), .D_CP0Write(D_CP0Write), 
										 .Cur_D_ExcCode(Cur_D_ExcCode), .isPI(isPI), .isPICommand(isPICommand));
	 StallControl uutStallControl(.F_PC_En(F_PC_En), .F_DRegister_En(F_DRegister_En), .D_EStallReset(D_EStallReset), .D_TuseRt(D_TuseRt), .D_TuseRs(D_TuseRs),
											.E_Tnew(E_Tnew), .E_RegWrite(E_RegWrite), .E_A3(E_A3), .D_Rs(D_Rs), .D_Rt(D_Rt), .M_A3(M_A3), .M_Tnew(M_Tnew), .M_RegWrite(M_RegWrite), .Start(Start),
											.Busy(Busy), .D_MDControl(D_MDControl), .E_CP0Write(E_CP0Write), .M_CP0Write(M_CP0Write), .isPICommand(isPICommand));
    ForwardControl uutForwardControl(.D_ForwardRD1Mux_Sel(D_ForwardRD1Mux_Sel), .D_ForwardRD2Mux_Sel(D_ForwardRD2Mux_Sel), .E_ForwardALUAMux_Sel(E_ForwardALUAMux_Sel),
												 .E_ForwardALUBMux_Sel(E_ForwardALUBMux_Sel), .M_ForwardStoreDataMux_Sel(M_ForwardStoreDataMux_Sel), .M_A3(M_A3), .M_RegWrite(M_RegWrite),
												 .D_Rt(D_Rt), .D_Rs(D_Rs), .M_Tnew(M_Tnew), .W_A3(W_A3), .W_RegWrite(W_RegWrite), .M_Rt(M_Rt), .E_Rs(E_Rs), .E_Rt(E_Rt));

endmodule
