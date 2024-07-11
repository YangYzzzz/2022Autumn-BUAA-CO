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
`define ADD 3'b000
`define SUB 3'b001
`define OR  3'b010
`define SLL 3'b011
`define AND 3'b100
`define SLT 3'b101
`define SLTU 3'b110
module E_ALU(
    input [31:0] E_ALUA,
    input [31:0] E_ALUB,
    input [3:0] E_ALUControl,
    output [31:0] E_ALURe,
	 output E_FlagALU
    );
	 integer i;
	 reg [5:0] cnt;
	 always@(*) begin
			cnt = 0;
			for(i=0;i<32;i=i+1) begin
					if(E_ALURe[i]==1) begin
							cnt = cnt + 1;
					end
			end
	 end
	 assign E_FlagALU = (cnt % 2 == 0) ? 1 : 0;
	 
	 wire [31:0] slt = ($signed(E_ALUA) < $signed(E_ALUB)) ? 1 : 0;
	 wire [31:0] sltu = (E_ALUA < E_ALUB) ? 1 : 0;
	 wire [4:0] shift = E_ALUB[4:0];
	assign E_ALURe = (E_ALUControl == `ADD) ? E_ALUA + E_ALUB :
						(E_ALUControl == `SUB) ? E_ALUA - E_ALUB :
						(E_ALUControl == `OR) ? E_ALUA | E_ALUB :
						(E_ALUControl == `SLL) ? E_ALUA << shift :
						(E_ALUControl == `AND) ? E_ALUA & E_ALUB :
						(E_ALUControl == `SLT) ? slt :
						(E_ALUControl == `SLTU) ? sltu :
						0;
endmodule