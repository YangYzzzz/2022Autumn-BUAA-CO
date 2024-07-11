`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:31:27 12/02/2022 
// Design Name: 
// Module Name:    GPIO 
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
module GPIO(
	 //64 button
	 input [7:0] dip_switch0,
    input [7:0] dip_switch1,
    input [7:0] dip_switch2,
    input [7:0] dip_switch3,
    input [7:0] dip_switch4,
    input [7:0] dip_switch5,
    input [7:0] dip_switch6,
    input [7:0] dip_switch7,
    // key
    input [7:0] user_key,
    // led
    output [31:0] led_light,
	 
	 input clk_in,
	 input sys_rstn,
	 input [3:0] GPIO_WE,
	 input [31:0] GPIO_Addr,
	 input [31:0] GPIO_WriteData,
	 output [31:0] GPIO_ReadData
    );
	reg [31:0] led; 
	reg [31:0] fixed_wdata;
	integer i;
	always @(*) begin
        fixed_wdata = led; 
        if (GPIO_WE[3]) fixed_wdata[31:24] = GPIO_WriteData[31:24];
        if (GPIO_WE[2]) fixed_wdata[23:16] = GPIO_WriteData[23:16];
        if (GPIO_WE[1]) fixed_wdata[15: 8] = GPIO_WriteData[15: 8];
        if (GPIO_WE[0]) fixed_wdata[7 : 0] = GPIO_WriteData[7 : 0];
    end
	 assign GPIO_ReadData = (GPIO_Addr[4:2] == 0) ? ~{dip_switch3, dip_switch2, dip_switch1, dip_switch0} :
									(GPIO_Addr[4:2] == 1) ? ~{dip_switch7, dip_switch6, dip_switch5, dip_switch4} :
									(GPIO_Addr[4:2] == 2) ? {24'b0, ~user_key} :
									(GPIO_Addr[4:2] == 4) ? ~led :
									0;
	assign led_light = ~led;
	always@(posedge clk_in) begin
			if(~sys_rstn) begin
					led <= 32'hffffffff;   //all bright
			end
			else if(|GPIO_WE) begin
					led <= fixed_wdata;
			end
	end
endmodule
