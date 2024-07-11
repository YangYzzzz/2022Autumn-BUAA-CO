`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:10:55 12/03/2022 
// Design Name: 
// Module Name:    UART 
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
`define DATA uart[0]
`define LSR uart[1]
`define DIVR uart[2]
`define DIVT uart[3]
 module UART(
	 input uart_rxd,  //from outside receive data
    output uart_txd, //display data
	 
	 input clk_in,
	 input sys_rstn,
	 input UART_WE,
	 input [31:0] UART_Addr,
	 input [31:0] UART_WriteData,
	 output [31:0] UART_ReadData,

	 output UART_IRQ
    );
	reg [31:0] uart[3:0];
	wire [7:0] tx_data, rx_data;
	wire [5:0] lsr;
	wire tx_avai, rx_clear, rx_ready;
	reg tx_start;
	integer i;
	assign lsr = {tx_avai, 4'b0, rx_ready};
	assign UART_ReadData = (UART_Addr[3:2] == 0) ? {24'b0, rx_data} :  // rx_ready == 1 effective
								  (UART_Addr[3:2] == 1) ? {26'b0, lsr} : 
								  (UART_Addr[3:2] == 2) ? `DIVR :
								  (UART_Addr[3:2] == 3) ? `DIVT :
								  0;
	always@(posedge clk_in) begin
			if(~sys_rstn) begin
					`DATA <= 0;
					`DIVT <= 2604;
					`DIVR <= 2604;
			end
			else if(UART_WE) begin
					uart[UART_Addr[3:2]] <= UART_WriteData;
			end
	end
	always@(posedge clk_in) begin
         if (~sys_rstn) begin
            tx_start <= 0;
			end
        else begin
            tx_start <= !tx_start & UART_WE & (UART_Addr[3:2] == 0);
		  end
	end
	assign tx_data = `DATA[7:0];
	
   assign rx_clear = tx_start & tx_avai;  // clear when data transmitted or uart closed
	assign UART_IRQ = rx_ready;  //enter interrupt and back xian
	uart_tx tx (
        .clk(clk_in), .rstn(sys_rstn), .period(`DIVT[15:0]), .txd(uart_txd), 
        .tx_start(tx_start), .tx_data(tx_data), .tx_avai(tx_avai)
    );
    uart_rx rx (
        .clk(clk_in), .rstn(sys_rstn), .period(`DIVR[15:0]), .rxd(uart_rxd),
        .rx_clear(rx_clear), .rx_data(rx_data), .rx_ready(rx_ready)
    );
endmodule
