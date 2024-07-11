`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:23:56 11/18/2022 
// Design Name: 
// Module Name:    Bridge 
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
module Bridge(
    input [31:0] Pr_Addr,
    input [31:0] Pr_WriteData, //m_data_wdata
    output [31:0] Pr_ReadData, //m_data_rdata
    input [3:0] Pr_Byteen,
	 output [3:0] DM_Byteen,
	 output [3:0] Interrupt_Byteen,
	 output Timer0_WE,
	 output Timer1_WE,
    output [31:0] DEV_Addr,    //give all device benzhi yiyang
	 output [31:0] Interrupt_Addr,
    output [31:0] DEV_WriteData,
    input [31:0] Timer0_ReadData,  //00007f00 ~ 00007f0b
    input [31:0] Timer1_ReadData,  //00007f10 ~ 00007f1b
    input [31:0] DM_ReadData     //00000000 ~ 00002fff
    //input [31:0] InterruptGenerator_ReadData,  //00007f20 ~ 00007f24 no use
	 
    );
	 assign DEV_Addr = Pr_Addr;
	 assign Interrupt_Addr = Pr_Addr;
	 assign DM_Byteen = (DMHit) ? Pr_Byteen : 0;
	 assign Interrupt_Byteen = (InterruptGeneratorHit) ? Pr_Byteen : 0;
	 assign DEV_WriteData = Pr_WriteData;
	wire Timer0Hit, Timer1Hit, DMHit, IMHit, InterruptGeneratorHit;
	assign DMHit = (Pr_Addr >= 32'h00000000 && Pr_Addr <= 32'h00002fff) ? 1 : 0;
	assign Timer0Hit = (Pr_Addr >= 32'h00007f00 && Pr_Addr <= 32'h00007f0b) ? 1 : 0;
	assign Timer1Hit = (Pr_Addr >= 32'h00007f10 && Pr_Addr <= 32'h00007f1b) ? 1 : 0;
	assign InterruptGeneratorHit = (Pr_Addr >= 32'h00007f20 && Pr_Addr <= 32'h00007f24) ? 1 : 0;
	assign Timer0_WE = (|Pr_Byteen && Timer0Hit) ? 1 : 0;
	assign Timer1_WE = (|Pr_Byteen && Timer1Hit) ? 1 : 0;
	assign Pr_ReadData = (Timer0Hit) ? Timer0_ReadData : 
								(Timer1Hit) ? Timer1_ReadData : 
								(DMHit) ? DM_ReadData :
								0;
endmodule
