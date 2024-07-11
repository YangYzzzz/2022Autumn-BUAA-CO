`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:07 11/09/2022 
// Design Name: 
// Module Name:    E_ALU 
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
`define ADD_unsign 4'b0000
`define ADD_sign 4'b0001
`define SUB_sign 4'b0010
`define OR  4'b0011
`define AND 4'b0100
`define SLT 4'b0101
`define SLTU 4'b0110
`define ADD_LW 4'b0111
`define ADD_LH 4'b1000
`define ADD_LB 4'b1001
`define ADD_SW 4'b1010
`define ADD_SH 4'b1011
`define ADD_SB 4'b1100
`define AdEs 5'b0101
`define AdEl 5'b0100
`define Ov   5'b1100
module E_ALU(
    input [31:0] E_ALUA,
    input [31:0] E_ALUB,
    input [3:0] E_ALUControl,
    output [31:0] E_ALURe,
	 output [4:0] Cur_E_ExcCode
    );
	 wire [31:0] slt = ($signed(E_ALUA) < $signed(E_ALUB)) ? 1 : 0;
	 wire [31:0] sltu = (E_ALUA < E_ALUB) ? 1 : 0;
	 wire [32:0] tmp1 = {E_ALUA[31], E_ALUA} + {E_ALUB[31], E_ALUB};
	 wire [32:0] tmp2 = {E_ALUA[31], E_ALUA} - {E_ALUB[31], E_ALUB};
	 wire isAddOv, isSubOv, isL, isS, isTimer, isCount, isAddrOv;
	 assign isS = (E_ALUControl == `ADD_SW || E_ALUControl == `ADD_SH || E_ALUControl == `ADD_SB) ? 1 : 0;
	 assign isL = (E_ALUControl == `ADD_LW || E_ALUControl == `ADD_LH || E_ALUControl == `ADD_LB) ? 1 : 0;
	 assign isTimer = ((E_ALURe >= 32'h00007f00 && E_ALURe <= 32'h00007f0b) || (E_ALURe >= 32'h00007f10 && E_ALURe <= 32'h00007f1b)) ? 1 : 0;
	 assign isCount = ((E_ALURe >= 32'h00007f08 && E_ALURe <= 32'h00007f0b) || (E_ALURe >= 32'h00007f18 && E_ALURe <= 32'h00007f1b)) ? 1 : 0;
	 assign isAddrOv = ((E_ALURe >= 32'h00003000 && E_ALURe < 32'h00007f00) || (E_ALURe > 32'h00007f0b && E_ALURe < 32'h00007f10) || 
								(E_ALURe > 32'h00007f1b && E_ALURe < 32'h00007f20) || (E_ALURe > 32'h00007f23)) ? 1 : 0;
	 assign isAddOv = (tmp1[32] != tmp1[31]) ? 1 : 0;
	 assign isSubOv = (tmp2[32] != tmp2[31]) ? 1 : 0;
	 //00007f00 ~ 00007f0b
	 assign Cur_E_ExcCode = ((E_ALUControl == `ADD_SW && E_ALURe[1:0] != 0) || (E_ALUControl == `ADD_SH && E_ALURe[0] != 0) ||
										((E_ALUControl == `ADD_SH || E_ALUControl == `ADD_SB) && isTimer == 1) || 
										(isS == 1 && (isAddOv == 1 || isCount == 1 || isAddrOv == 1))) ? `AdEs :  //store exception
									 ((E_ALUControl == `ADD_LW && E_ALURe[1:0] != 0) || (E_ALUControl == `ADD_LH && E_ALURe[0] != 0) ||
										((E_ALUControl == `ADD_LH || E_ALUControl == `ADD_LB) && isTimer == 1) || 
										(isL == 1 && (isAddOv == 1 || isAddrOv == 1))) ? `AdEl :  //load exception
									 ((E_ALUControl == `ADD_sign && isAddOv == 1) || (E_ALUControl == `SUB_sign && isSubOv == 1)) ? `Ov :
									 0;
	assign E_ALURe = (E_ALUControl == `ADD_unsign || E_ALUControl == `ADD_sign || E_ALUControl == `ADD_LW || E_ALUControl == `ADD_LH || E_ALUControl == `ADD_LB || 
																		E_ALUControl == `ADD_SW || E_ALUControl == `ADD_SH || E_ALUControl == `ADD_SB) ? E_ALUA + E_ALUB :
						(E_ALUControl == `SUB_sign) ? E_ALUA - E_ALUB :
						(E_ALUControl == `OR) ? E_ALUA | E_ALUB :
						(E_ALUControl == `AND) ? E_ALUA & E_ALUB :
						(E_ALUControl == `SLT) ? slt :
						(E_ALUControl == `SLTU) ? sltu :
						0;
endmodule