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
	 input [5:0] HWInt,
	 output [31:0] F_PC,
	 output [3:0] M_Byteen,
	 output [31:0] M_ALURe,
	 output [31:0] M_TransformStoreData,
	 input [31:0] M_MemoryData,
	 input [31:0] F_Command
    );
	 wire D_RegWrite, M_ForwardStoreDataMux_Sel, F_PC_En, F_DRegister_En, D_EStallReset, E_RegWrite, M_RegWrite, D_MDDataOp, Start, Busy, D_EXLClr, D_CP0Write, W_RegWrite;
    wire [5:0] D_Op, D_Func;
    wire [1:0] D_MemWrite, D_ExtOp, D_RegDst, D_ALUSrc, D_Tnew, D_ForwardRD1Mux_Sel, D_ForwardRD2Mux_Sel, E_ForwardALUAMux_Sel, E_ForwardALUBMux_Sel, D_TuseRs, D_TuseRt,
					E_Tnew, M_Tnew;
    wire [2:0] D_DataExtOp, D_MDControl, D_nPCSel, D_RegWriteSel;
	 wire [3:0] D_ALUControl;
	 wire [4:0] E_A3, D_Rs, D_Rt, M_A3, M_Rt, E_Rs, E_Rt, Cur_D_ExcCode, W_A3;
	 DataBase uutDataBase(.clk(clk), .reset(reset), .D_Op(D_Op), .D_Func(D_Func), .D_nPCSel(D_nPCSel), .D_ExtOp(D_ExtOp), .D_RegDst(D_RegDst), .D_ALUSrc(D_ALUSrc), 
								.D_ALUControl(D_ALUControl), .D_MemWrite(D_MemWrite), .D_RegWriteSel(D_RegWriteSel), .D_RegWrite(D_RegWrite), .D_DataExtOp(D_DataExtOp),
								.D_Tnew(D_Tnew), .D_ForwardRD1Mux_Sel(D_ForwardRD1Mux_Sel), .D_ForwardRD2Mux_Sel(D_ForwardRD2Mux_Sel), .E_ForwardALUAMux_Sel(E_ForwardALUAMux_Sel),
								.E_ForwardALUBMux_Sel(E_ForwardALUBMux_Sel), .M_ForwardStoreDataMux_Sel(M_ForwardStoreDataMux_Sel), .F_PC_En(F_PC_En), .F_DRegister_En(F_DRegister_En), 
								.D_EStallReset(D_EStallReset), .E_Tnew(E_Tnew), .E_RegWrite(E_RegWrite), .E_A3(E_A3), .D_Rs(D_Rs), .D_Rt(D_Rt), .M_A3(M_A3), .F_PC(F_PC),
								.M_Tnew(M_Tnew), .M_RegWrite(M_RegWrite), .W_A3(W_A3), .W_RegWrite(W_RegWrite), .M_Rt(M_Rt), .E_Rs(E_Rs), .E_Rt(E_Rt), .D_EXLClr(D_EXLClr), .D_MDControl(D_MDControl),
								.D_MDDataOp(D_MDDataOp), .Start(Start), .Busy(Busy), .HWInt(HWInt), .D_CP0Write(D_CP0Write), .Cur_D_ExcCode(Cur_D_ExcCode), .M_Byteen(M_Byteen), .M_ALURe(M_ALURe),
								.M_TransformStoreData(M_TransformStoreData), .M_MemoryData(M_MemoryData), .F_Command(F_Command));
	 MainControl uutMainControl(.D_Op(D_Op), .D_Func(D_Func), .D_nPCSel(D_nPCSel), .D_ExtOp(D_ExtOp), .D_RegDst(D_RegDst), .D_ALUSrc(D_ALUSrc), .D_ALUControl(D_ALUControl), 
										 .D_MemWrite(D_MemWrite), .D_RegWriteSel(D_RegWriteSel), .D_RegWrite(D_RegWrite), .D_TuseRs(D_TuseRs), .D_TuseRt(D_TuseRt), .D_Tnew(D_Tnew), 
										 .D_DataExtOp(D_DataExtOp), .D_MDControl(D_MDControl), .D_MDDataOp(D_MDDataOp), .D_EXLClr(D_EXLClr), .D_Rs(D_Rs), .D_CP0Write(D_CP0Write), 
										 .Cur_D_ExcCode(Cur_D_ExcCode));
	 StallControl uutStallControl(.F_PC_En(F_PC_En), .F_DRegister_En(F_DRegister_En), .D_EStallReset(D_EStallReset), .D_TuseRt(D_TuseRt), .D_TuseRs(D_TuseRs),
											.E_Tnew(E_Tnew), .E_RegWrite(E_RegWrite), .E_A3(E_A3), .D_Rs(D_Rs), .D_Rt(D_Rt), .M_A3(M_A3), .M_Tnew(M_Tnew), .M_RegWrite(M_RegWrite), .Start(Start),
											.Busy(Busy), .D_MDControl(D_MDControl));
    ForwardControl uutForwardControl(.D_ForwardRD1Mux_Sel(D_ForwardRD1Mux_Sel), .D_ForwardRD2Mux_Sel(D_ForwardRD2Mux_Sel), .E_ForwardALUAMux_Sel(E_ForwardALUAMux_Sel),
												 .E_ForwardALUBMux_Sel(E_ForwardALUBMux_Sel), .M_ForwardStoreDataMux_Sel(M_ForwardStoreDataMux_Sel), .M_A3(M_A3), .M_RegWrite(M_RegWrite),
												 .D_Rt(D_Rt), .D_Rs(D_Rs), .M_Tnew(M_Tnew), .W_A3(W_A3), .W_RegWrite(W_RegWrite), .M_Rt(M_Rt), .E_Rs(E_Rs), .E_Rt(E_Rt));

endmodule
