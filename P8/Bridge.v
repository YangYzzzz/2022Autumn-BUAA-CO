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
	 
	 output [3:0] DM_WE,
	 output UART_WE,
	 output Timer_WE,
	 output [3:0] GPIO_WE,
	 output [3:0] Tube_WE,
	 
    output [31:0] DEV_Addr,    //give all device benzhi yiyang
    output [31:0] DEV_WriteData,
	 
    input [31:0] Timer_ReadData,  //00007f00 ~ 00007f0b
    input [31:0] DM_ReadData,     //00000000 ~ 00002fff
	 input [31:0] UART_ReadData,
	 input [31:0] Tube_ReadData,
	 input [31:0] GPIO_ReadData,
    //input [31:0] InterruptGenerator_ReadData,  //00007f20 ~ 00007f24 no use
	 input clk,
	 input reset
    );
	 wire TimerHit, DMHit, UARTHit, TubeHit, GPIOHit;
	 assign DEV_Addr = Pr_Addr;
	 assign DEV_WriteData = Pr_WriteData;
	 
	 assign DM_WE = (DMHit) ? Pr_Byteen : 4'd0;
	 assign Timer_WE = (|Pr_Byteen && TimerHit) ? 1'b1 : 1'b0;
	 assign UART_WE = (|Pr_Byteen && UARTHit) ? 1'b1 : 1'b0;
	 assign GPIO_WE = (GPIOHit) ? Pr_Byteen : 4'd0;
	 assign Tube_WE = (TubeHit) ? Pr_Byteen : 4'd0;
	 
	assign DMHit = (Pr_Addr >= 32'h00000000 && Pr_Addr <= 32'h00002fff) ? 1'b1 : 1'b0;
	assign TimerHit = (Pr_Addr >= 32'h00007f00 && Pr_Addr <= 32'h00007f0b) ? 1'b1 : 1'b0;
	assign UARTHit = (Pr_Addr >= 32'h00007f30 && Pr_Addr <= 32'h00007f3f) ? 1'b1 : 1'b0;   //0011 0000 - 0011 1111
	assign TubeHit = (Pr_Addr >= 32'h00007f50 && Pr_Addr <= 32'h00007f57) ? 1'b1 : 1'b0;
	assign GPIOHit = (Pr_Addr >= 32'h00007f60 && Pr_Addr <= 32'h00007f73) ? 1'b1 : 1'b0;
	
	reg [31:0] timerdata, uartdata, tubedata, gpiodata, addr;
	always@(posedge clk) begin
			if(reset == 1) begin
					timerdata <= 0;
					uartdata <= 0;
					tubedata <= 0;
					gpiodata <= 0;
					addr <= 0;
			end
			else begin
					timerdata <= Timer_ReadData;
					uartdata <= UART_ReadData;
					tubedata <= Tube_ReadData;
					gpiodata <= GPIO_ReadData;
					addr <= Pr_Addr;
			end
	end
	assign Pr_ReadData = (addr >= 32'h00007f00 && addr <= 32'h00007f0b) ? timerdata : 
								(addr >= 32'h00007f30 && addr <= 32'h00007f3f) ? uartdata :
								(addr >= 32'h00007f50 && addr <= 32'h00007f57) ? tubedata :
								(addr >= 32'h00007f60 && addr <= 32'h00007f73) ? gpiodata :
								(addr >= 32'h00000000 && addr <= 32'h00002fff) ? DM_ReadData :
								0;
endmodule
