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
    input clk,                    // 时钟信号
    input reset,                  // 同步复位信号
    input interrupt,              // 外部中断信号
    output [31:0] macroscopic_pc, // 宏观 PC

    output [31:0] i_inst_addr,    // IM 读取地址（取指 PC）
    input  [31:0] i_inst_rdata,   // IM 读取数据

    output [31:0] m_data_addr,    // DM 读写地址
    input  [31:0] m_data_rdata,   // DM 读取数据
    output [31:0] m_data_wdata,   // DM 待写入数据
    output [3 :0] m_data_byteen,  // DM 字节使能信号

    output [31:0] m_int_addr,     // 中断发生器待写入地址
    output [3 :0] m_int_byteen,   // 中断发生器字节使能信号

    output [31:0] m_inst_addr,    // M 级 PC

    output w_grf_we,              // GRF 写使能信号
    output [4 :0] w_grf_addr,     // GRF 待写入寄存器编号
    output [31:0] w_grf_wdata,    // GRF 待写入数据

    output [31:0] w_inst_addr     // W 级 PC
    );
	 wire [31:0] CPU_MemAddr, CPU_ReadData, CPU_MemWriteData, Timer1_ReadData, Timer0_ReadData;
	 wire [5:0] HWInt;
	 wire [3:0] CPU_Byteen;
	 wire Timer0_WE, Timer1_WE, Timer0_IRQ, Timer1_IRQ;
	 assign HWInt = {3'b0, interrupt, Timer1_IRQ, Timer0_IRQ};
	 CPU uutCPU(.clk(clk), .reset(reset), .macroscopic_pc(macroscopic_pc), .F_PC(i_inst_addr), .F_Command(i_inst_rdata), .M_ALURe(CPU_MemAddr), .M_MemoryData(CPU_ReadData),
					.M_TransformStoreData(CPU_MemWriteData), .M_Byteen(CPU_Byteen), .M_PC(m_inst_addr), .W_RegWrite(w_grf_we), .W_A3(w_grf_addr), .W_RegWriteData(w_grf_wdata), .W_PC(w_inst_addr),
					.HWInt(HWInt));
	 Bridge uutBridge(.Pr_Addr(CPU_MemAddr), .Pr_WriteData(CPU_MemWriteData), .Pr_ReadData(CPU_ReadData), .Pr_Byteen(CPU_Byteen), .DM_Byteen(m_data_byteen), .Interrupt_Byteen(m_int_byteen),
							.Timer0_WE(Timer0_WE), .Timer1_WE(Timer1_WE), .DEV_Addr(m_data_addr), .Interrupt_Addr(m_int_addr), .DEV_WriteData(m_data_wdata), .Timer0_ReadData(Timer0_ReadData),
							.Timer1_ReadData(Timer1_ReadData), .DM_ReadData(m_data_rdata));
	 Timer0 uutTimer0(.clk(clk), .reset(reset), .Addr(m_data_addr), .WE(Timer0_WE), .Din(m_data_wdata), .Dout(Timer0_ReadData), .IRQ(Timer0_IRQ));
	 Timer1 uutTimer1(.clk(clk), .reset(reset), .Addr(m_data_addr), .WE(Timer1_WE), .Din(m_data_wdata), .Dout(Timer1_ReadData), .IRQ(Timer1_IRQ));
endmodule
