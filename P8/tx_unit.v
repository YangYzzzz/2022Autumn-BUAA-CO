`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:06:40 12/03/2022 
// Design Name: 
// Module Name:    tx_unit 
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
`include    "head_uart.v"

module  tx_unit( d_in, load, en_tx, txd, ts, clk, rst ) ;
    input   [7:0]                   d_in ;
    input                           load ;
    input                           en_tx ;
    output                          txd ;
    output                          ts ;
    input                           clk ;
    input                           rst ;
    
    //  transmit controller
    ctrl_shift  U_CTRL_SHFT( en_tx, load, shift, ts, clk, rst ) ;

    //  transmit register
    trans_reg   U_TRANS_REG( d_in, load, shift, txd, clk, rst ) ;
    
endmodule

//  Controller
module  ctrl_shift( en_tx, load, shift, ts, clk, rst ) ;
    input                           en_tx ;     // enable TX
    input                           load ;      // load byte to transmit register
    output                          shift ;     // shift 
    output                          ts ;        // transmit status
    input                           clk ;       // clock
    input                           rst ;       // reset

    //  variables
    reg     [3:0]                   cnt_tx ;
    wire                            en_cnt_tx ;
    wire                            rst_cnt_tx ;
    parameter   IDLE=0, SHIFT=1 ;
    reg                             fsm ;
    
    //  shift enable
    assign  shift   = (fsm==SHIFT) && en_tx ;
    //  transmit status to be set if FSM is in IDLE state
    assign  ts      = (fsm==IDLE) ;

    // TxD controller
    always  @( posedge clk or posedge rst )
        if ( rst )
            fsm <= IDLE ;
        else
            case ( fsm )
                IDLE    :   if ( load ) 
                                fsm <= SHIFT ;
                SHIFT   :   if ( cnt_tx == 0 )
                                fsm <= IDLE ;
            endcase

    // transmit counter
    assign  rst_cnt_tx  = (fsm==IDLE) ;
    assign  en_cnt_tx   = (fsm==SHIFT) && en_tx ;
    always  @( posedge clk or posedge rst_cnt_tx )
        if ( rst_cnt_tx )
            cnt_tx <= 10 ;
        else
            if ( en_cnt_tx )
                cnt_tx <= cnt_tx - 1 ;
endmodule

//  11bits register : parallel load & serial output
module  trans_reg( d_in, load, shift, txd, clk, rst ) ;
    input   [7:0]                   d_in ;
    input                           load ;
    input                           shift ;
    output                          txd ;
    input                           clk ;
    input                           rst ;

    reg     [10:0]                  t_reg ;     // transmit register
    integer                         i ;         // logic variable

    // TxD
    assign  txd = t_reg[0] ;                    // bit 0 is always output to TxD
    
    // shift register
    always  @( posedge clk or posedge rst )
        if ( rst )
            t_reg <= 'h7FF ;                    // ensure TxD is '1' in idle state
        else
            if ( load )
                begin 
                    t_reg[10]    <= 1'b1 ;      // stop bit
                    t_reg[9:2]   <= d_in ;      // byte to be transmitted
                    t_reg[1]     <= 1'b0 ;      // start bit
                    t_reg[0]     <= 1'b1 ;      // line idle
                end
            else
                if ( shift )                    // serialisation of transmit register
                    for ( i=1; i<=10; i=i+1 )
                        t_reg[i-1] <= t_reg[i] ;
    
endmodule
Footer

