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
    // clock and reset
    input clk_in,
    input sys_rstn,
    // dip switch
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
    // digital tube
    output [7:0] digital_tube2,
    output digital_tube_sel2,
    output [7:0] digital_tube1,
    output [3:0] digital_tube_sel1,
    output [7:0] digital_tube0,
    output [3:0] digital_tube_sel0,
    // uart hui xian
    input uart_rxd,
    output uart_txd
    );
	 wire [31:0] CPU_MemAddr, CPU_ReadData, CPU_MemWriteData, Timer_ReadData, CPU_F_PC, IM_Command, DEV_Addr, DEV_WriteData, DM_ReadData, UART_ReadData, Tube_ReadData, GPIO_ReadData, IM_A;
	 wire [11:0] IM_Addr, DM_Addr;
	 assign DM_Addr = DEV_Addr[13:2];
	 assign IM_A = CPU_F_PC - 32'h3000;
	 assign IM_Addr = IM_A[13:2];
	 wire [5:0] HWInt;
	 wire [3:0] CPU_Byteen, DM_WE, GPIO_WE, Tube_WE;
	 wire Timer_WE, UART_WE, Timer_IRQ, reset, UART_IRQ;
	 assign HWInt = {2'b0, UART_IRQ, 3'b0};
	 assign reset = ~sys_rstn;
	 CPU uutCPU(.clk(clk_in), .reset(reset), .HWInt(HWInt), .F_PC(CPU_F_PC), .M_Byteen(CPU_Byteen), .M_ALURe(CPU_MemAddr), 
					.M_TransformStoreData(CPU_MemWriteData), .M_MemoryData(CPU_ReadData), .F_Command(IM_Command));
	 IM uutIM(.clka(clk_in), .addra(IM_Addr), .douta(IM_Command));
	 DM uutDM(.clka(clk_in), .wea(DM_WE), .addra(DM_Addr), .dina(DEV_WriteData), .douta(DM_ReadData));
	 Timer uutTimer(.clk(clk_in), .reset(reset), .Addr(DEV_Addr), .WE(Timer_WE), .Din(DEV_WriteData), .Dout(Timer_ReadData), .IRQ(Timer_IRQ));
	 Bridge uutBridge(.Pr_Addr(CPU_MemAddr), .Pr_WriteData(CPU_MemWriteData), .Pr_ReadData(CPU_ReadData), .Pr_Byteen(CPU_Byteen), .DM_WE(DM_WE), .UART_WE(UART_WE), .GPIO_WE(GPIO_WE),
							.Timer_WE(Timer_WE), .Tube_WE(Tube_WE), .DEV_Addr(DEV_Addr), .DEV_WriteData(DEV_WriteData), .Timer_ReadData(Timer_ReadData), .DM_ReadData(DM_ReadData), 
							.UART_ReadData(UART_ReadData), .Tube_ReadData(Tube_ReadData), .GPIO_ReadData(GPIO_ReadData), .clk(clk_in), .reset(reset));
	 UART uutUART(.uart_rxd(uart_rxd), .uart_txd(uart_txd), .clk_in(clk_in), .sys_rstn(sys_rstn), .UART_WE(UART_WE), .UART_Addr(DEV_Addr), .UART_WriteData(DEV_WriteData), 
					  .UART_ReadData(UART_ReadData), .UART_IRQ(UART_IRQ));
	 GPIO uutGPIO(.dip_switch0(dip_switch0), .dip_switch1(dip_switch1), .dip_switch2(dip_switch2), .dip_switch3(dip_switch3), .dip_switch4(dip_switch4), .dip_switch5(dip_switch5),
					  .dip_switch6(dip_switch6), .dip_switch7(dip_switch7), .user_key(user_key), .led_light(led_light), .clk_in(clk_in), .sys_rstn(sys_rstn), .GPIO_WE(GPIO_WE), .GPIO_Addr(DEV_Addr),
					  .GPIO_WriteData(DEV_WriteData), .GPIO_ReadData(GPIO_ReadData));		
	 Tube uutTube(.digital_tube_sel0(digital_tube_sel0), .digital_tube0(digital_tube0), .digital_tube_sel1(digital_tube_sel1), .digital_tube1(digital_tube1), 
					  .digital_tube_sel2(digital_tube_sel2), .digital_tube2(digital_tube2), .clk_in(clk_in), .sys_rstn(sys_rstn), .Tube_WE(Tube_WE), .Tube_WriteData(DEV_WriteData),
					  .Tube_Addr(DEV_Addr), .Tube_ReadData(Tube_ReadData));

endmodule
