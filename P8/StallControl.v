`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:55 11/09/2022 
// Design Name: 
// Module Name:    StallControl 
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
module StallControl(
    output F_PC_En,
    output F_DRegister_En,
    output D_EStallReset,
    input [1:0] D_TuseRt,
    input [1:0] D_TuseRs,
    input [1:0] E_Tnew,
    input E_RegWrite,
    input [4:0] E_A3,
    input [4:0] D_Rs,
    input [4:0] D_Rt,
    input [4:0] M_A3,
    input [1:0] M_Tnew,
    input M_RegWrite,
	 input [2:0] D_MDControl,
	 input Start,
	 input Busy
    );
	wire Stall;
	wire StallRs;
	wire StallRt;
	wire StallMD;
	assign StallRs = ((D_TuseRs == 0 && E_Tnew == 1 && E_A3 == D_Rs && E_A3 != 0 && E_RegWrite == 1) || (D_TuseRs == 0 && E_Tnew == 2 && E_A3 == D_Rs && E_A3 != 0 && E_RegWrite == 1) ||
							(D_TuseRs == 1 && E_Tnew == 2 && E_A3 == D_Rs && E_A3 != 0 && E_RegWrite == 1) || (D_TuseRs == 0 && M_Tnew == 1 && M_A3 == D_Rs && M_A3 != 0 && M_RegWrite == 1)) ? 1'b1 :
							1'b0;
	assign StallRt = ((D_TuseRt == 0 && E_Tnew == 1 && E_A3 == D_Rt && E_A3 != 0 && E_RegWrite == 1) || (D_TuseRt == 0 && E_Tnew == 2 && E_A3 == D_Rt && E_A3 != 0 && E_RegWrite == 1) ||
							(D_TuseRt == 1 && E_Tnew == 2 && E_A3 == D_Rt && E_A3 != 0 && E_RegWrite == 1) || (D_TuseRt == 0 && M_Tnew == 1 && M_A3 == D_Rt && M_A3 != 0 && M_RegWrite == 1)) ? 1'b1 :
							1'b0;
	assign StallMD = (D_MDControl != 0 && (Start == 1 || Busy == 1)) ? 1'b1 : 1'b0;
	assign Stall = StallRs || StallRt || StallMD;
	assign F_PC_En = (Stall == 1) ? 1'b0 : 1'b1;
	assign F_DRegister_En = (Stall == 1) ? 1'b0 : 1'b1;
	assign D_EStallReset = (Stall == 1) ? 1'b1 : 1'b0;
endmodule
