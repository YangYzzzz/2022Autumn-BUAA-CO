`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:52 11/09/2022 
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
    input reset,
    output [31:0] i_inst_addr,
    input [31:0] i_inst_rdata,
	 
	 output [31:0] m_data_addr,
	 input [31:0] m_data_rdata,
    output [31:0] m_data_wdata,
    output [3:0] m_data_byteen,
    output [31:0] m_inst_addr,

    output w_grf_we,
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr
    );
	 wire M_ForwardStoreDataMux_Sel, F_PC_En, F_DRegister_En, D_ERegister_StallReset, Start, Busy, D_Check, D_RegWrite, E_RegWrite, M_RegWrite, E_Check;
    wire [5:0] D_Op, D_Func;
    wire [1:0] D_Tnew, D_ForwardRD1Mux_Sel, D_ForwardRD2Mux_Sel, E_ForwardALUAMux_Sel, E_ForwardALUBMux_Sel, D_TuseRs, D_TuseRt, E_Tnew, M_Tnew;
    wire [3:0] D_ALUControl, D_DataExtOp, D_MDControl, D_nPCSel, D_MDDataOp, D_MemWrite, D_ExtOp, D_RegDst, D_ALUSrc, D_RegWriteSel;
	 wire [4:0] E_A3, D_Rs, D_Rt, M_A3, M_Rt, E_Rs, E_Rt;
	 wire [31:0] M_PC8, W_PC8;
	 assign m_inst_addr = M_PC8 - 8;
	 assign w_inst_addr = W_PC8 - 8;
	 DataBase uutDataBase(.clk(clk), .reset(reset), .D_Op(D_Op), .D_Func(D_Func), .D_nPCSel(D_nPCSel), .D_ExtOp(D_ExtOp), .D_RegDst(D_RegDst), .D_ALUSrc(D_ALUSrc), 
								.D_ALUControl(D_ALUControl), .D_MemWrite(D_MemWrite), .D_RegWriteSel(D_RegWriteSel), .D_RegWrite(D_RegWrite), .D_DataExtOp(D_DataExtOp),
								.D_Tnew(D_Tnew), .D_ForwardRD1Mux_Sel(D_ForwardRD1Mux_Sel), .D_ForwardRD2Mux_Sel(D_ForwardRD2Mux_Sel), .E_ForwardALUAMux_Sel(E_ForwardALUAMux_Sel),
								.E_ForwardALUBMux_Sel(E_ForwardALUBMux_Sel), .M_ForwardStoreDataMux_Sel(M_ForwardStoreDataMux_Sel), .F_PC_En(F_PC_En), .F_DRegister_En(F_DRegister_En), 
								.D_ERegister_StallReset(D_ERegister_StallReset), .E_Tnew(E_Tnew), .E_RegWrite(E_RegWrite), .E_A3(E_A3), .D_Rs(D_Rs), .D_Rt(D_Rt), .M_NewA3(M_A3), 
								.M_Tnew(M_Tnew), .M_RegWrite(M_RegWrite), .W_A3(w_grf_addr), .W_RegWrite(w_grf_we), .M_Rt(M_Rt), .E_Rs(E_Rs), .E_Rt(E_Rt), .F_PC(i_inst_addr), .F_Command(i_inst_rdata),
								.M_ALURe(m_data_addr), .M_TransformStoreData(m_data_wdata), .M_MemoryData(m_data_rdata), .M_PC8(M_PC8), .W_RegWriteData(w_grf_wdata),
								.W_PC8(W_PC8), .M_Byteen(m_data_byteen), .D_MDControl(D_MDControl), .D_MDDataOp(D_MDDataOp), .Start(Start), .Busy(Busy), .D_Check(D_Check), .E_Check(E_Check));
	 MainControl uutMainControl(.D_Op(D_Op), .D_Func(D_Func), .D_nPCSel(D_nPCSel), .D_ExtOp(D_ExtOp), .D_RegDst(D_RegDst), .D_ALUSrc(D_ALUSrc), .D_ALUControl(D_ALUControl), 
										 .D_MemWrite(D_MemWrite), .D_RegWriteSel(D_RegWriteSel), .D_RegWrite(D_RegWrite), .D_TuseRs(D_TuseRs), .D_TuseRt(D_TuseRt), .D_Tnew(D_Tnew), 
										 .D_DataExtOp(D_DataExtOp), .D_MDControl(D_MDControl), .D_MDDataOp(D_MDDataOp), .D_Check(D_Check));
	 StallControl uutStallControl(.F_PC_En(F_PC_En), .F_DRegister_En(F_DRegister_En), .D_ERegister_StallReset(D_ERegister_StallReset), .D_TuseRt(D_TuseRt), .D_TuseRs(D_TuseRs),
											.E_Tnew(E_Tnew), .E_RegWrite(E_RegWrite), .E_A3(E_A3), .D_Rs(D_Rs), .D_Rt(D_Rt), .M_A3(M_A3), .M_Tnew(M_Tnew), .M_RegWrite(M_RegWrite), .Start(Start),
											.Busy(Busy), .D_MDControl(D_MDControl), .E_Check(E_Check));
    ForwardControl uutForwardControl(.D_ForwardRD1Mux_Sel(D_ForwardRD1Mux_Sel), .D_ForwardRD2Mux_Sel(D_ForwardRD2Mux_Sel), .E_ForwardALUAMux_Sel(E_ForwardALUAMux_Sel),
												 .E_ForwardALUBMux_Sel(E_ForwardALUBMux_Sel), .M_ForwardStoreDataMux_Sel(M_ForwardStoreDataMux_Sel), .M_A3(M_A3), .M_RegWrite(M_RegWrite),
												 .D_Rt(D_Rt), .D_Rs(D_Rs), .M_Tnew(M_Tnew), .W_A3(w_grf_addr), .W_RegWrite(w_grf_we), .M_Rt(M_Rt), .E_Rs(E_Rs), .E_Rt(E_Rt));

endmodule
