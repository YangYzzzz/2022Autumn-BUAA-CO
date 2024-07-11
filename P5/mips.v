`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:20:31 11/03/2022 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );
	 wire M_ForwardStoreDataMux_Sel, F_PC_En, F_DRegister_En, D_ERegister_StallReset, D_Check;
    wire [5:0] D_Op, D_Func;
    wire [1:0] D_Tnew, D_ForwardRD1Mux_Sel, D_ForwardRD2Mux_Sel, E_ForwardALUAMux_Sel, E_ForwardALUBMux_Sel, D_TuseRs, D_TuseRt,
					E_Tnew, M_Tnew;
    wire [2:0] D_ALUControl, D_MemWrite, D_RegWrite, E_RegWrite, M_RegWrite, W_RegWrite, D_nPCSel, D_ExtOp, D_RegDst, D_ALUSrc, D_RegWriteSel, D_DataExtOp;
	 wire [4:0] E_A3, D_Rs, D_Rt, M_A3, W_A3, M_Rt, E_Rs, E_Rt;
	 DataBase uutDataBase(.clk(clk), .reset(reset), .D_Op(D_Op), .D_Func(D_Func), .D_nPCSel(D_nPCSel), .D_ExtOp(D_ExtOp), .D_RegDst(D_RegDst), .D_ALUSrc(D_ALUSrc), 
								.D_ALUControl(D_ALUControl), .D_MemWrite(D_MemWrite), .D_RegWriteSel(D_RegWriteSel), .D_RegWrite(D_RegWrite),
								.D_Tnew(D_Tnew), .D_ForwardRD1Mux_Sel(D_ForwardRD1Mux_Sel), .D_ForwardRD2Mux_Sel(D_ForwardRD2Mux_Sel), .E_ForwardALUAMux_Sel(E_ForwardALUAMux_Sel),
								.E_ForwardALUBMux_Sel(E_ForwardALUBMux_Sel), .M_ForwardStoreDataMux_Sel(M_ForwardStoreDataMux_Sel), .F_PC_En(F_PC_En), .F_DRegister_En(F_DRegister_En), 
								.D_ERegister_StallReset(D_ERegister_StallReset), .E_Tnew(E_Tnew), .E_RegWrite(E_RegWrite), .E_A3(E_A3), .D_Rs(D_Rs), .D_Rt(D_Rt), .M_A3(M_A3), 
								.M_Tnew(M_Tnew), .M_RegWrite(M_RegWrite), .W_A3(W_A3), .W_RegWrite(W_RegWrite), .M_Rt(M_Rt), .E_Rs(E_Rs), .E_Rt(E_Rt), .D_DataExtOp(D_DataExtOp), .D_Check(D_Check));
	 MainControl uutMainControl(.D_Op(D_Op), .D_Func(D_Func), .D_nPCSel(D_nPCSel), .D_ExtOp(D_ExtOp), .D_RegDst(D_RegDst), .D_ALUSrc(D_ALUSrc), .D_ALUControl(D_ALUControl), 
										 .D_MemWrite(D_MemWrite), .D_RegWriteSel(D_RegWriteSel), .D_RegWrite(D_RegWrite), .D_TuseRs(D_TuseRs), .D_TuseRt(D_TuseRt), .D_Tnew(D_Tnew),
										 .D_DataExtOp(D_DataExtOp), .D_Check(D_Check));
	 StallControl uutStallControl(.F_PC_En(F_PC_En), .F_DRegister_En(F_DRegister_En), .D_ERegister_StallReset(D_ERegister_StallReset), .D_TuseRt(D_TuseRt), .D_TuseRs(D_TuseRs),
											.E_Tnew(E_Tnew), .E_RegWrite(E_RegWrite), .E_A3(E_A3), .D_Rs(D_Rs), .D_Rt(D_Rt), .M_A3(M_A3), .M_Tnew(M_Tnew), .M_RegWrite(M_RegWrite));
    ForwardControl uutForwardControl(.D_ForwardRD1Mux_Sel(D_ForwardRD1Mux_Sel), .D_ForwardRD2Mux_Sel(D_ForwardRD2Mux_Sel), .E_ForwardALUAMux_Sel(E_ForwardALUAMux_Sel),
												 .E_ForwardALUBMux_Sel(E_ForwardALUBMux_Sel), .M_ForwardStoreDataMux_Sel(M_ForwardStoreDataMux_Sel), .M_A3(M_A3), .M_RegWrite(M_RegWrite),
												 .D_Rt(D_Rt), .D_Rs(D_Rs), .M_Tnew(M_Tnew), .W_A3(W_A3), .W_RegWrite(W_RegWrite), .M_Rt(M_Rt), .E_Rs(E_Rs), .E_Rt(E_Rt));

endmodule
