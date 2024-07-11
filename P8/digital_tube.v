`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:00:34 12/02/2022 
// Design Name: 
// Module Name:    digital_tube 
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
module digital_tube(
    input wire clk,
    input wire rstn,
    input wire [15:0] data,
    output wire [3:0] sel,
    output wire [7:0] seg
);

    localparam PERIOD = 32'd25_000;

    // div counter
    reg [31:0] counter;
    always @(posedge clk) begin
        if (~rstn) begin
            counter <= 0;
        end
        else begin
            if (counter + 1 == PERIOD) 
                counter <= 0;
            else
                counter <= counter + 1;
        end
    end

    // select
    reg [1:0] select;
	 reg reset_tag;
    always @(posedge clk) begin
        if (~rstn) begin
            select <= 0;
				reset_tag <= 1;
        end
        else begin
				reset_tag <= 0;
            if (counter + 1 == PERIOD) 
                select <= select + 1'b1;
        end
    end

    assign sel = (reset_tag) ? 4'b1111 : (4'b1 << select);

    // data output
    function [7:0] hex2dig;   // dp = 1
        input [3:0] hex;
        begin
            case (hex)
            4'h0    : hex2dig = 8'b1000_0001;   // not g
            4'h1    : hex2dig = 8'b1100_1111;   // b, c
            4'h2    : hex2dig = 8'b1001_0010;   // not c, f
            4'h3    : hex2dig = 8'b1000_0110;   // not e, f
            4'h4    : hex2dig = 8'b1100_1100;   // not a, d, e
            4'h5    : hex2dig = 8'b1010_0100;   // not b, e
            4'h6    : hex2dig = 8'b1010_0000;   // not b
            4'h7    : hex2dig = 8'b1000_1111;   // a, b, c
            4'h8    : hex2dig = 8'b1000_0000;   // all
            4'h9    : hex2dig = 8'b1000_0100;   // not e
            4'hA    : hex2dig = 8'b1000_1000;   // not d
            4'hB    : hex2dig = 8'b1110_0000;   // not a, b
            4'hC    : hex2dig = 8'b1011_0001;   // a, d, e, f
            4'hD    : hex2dig = 8'b1100_0010;   // not a, f
            4'hE    : hex2dig = 8'b1011_0000;   // not b, c
            4'hF    : hex2dig = 8'b1011_1000;   // a, e, f, g
            default : hex2dig = 8'b1111_1111;
            endcase
        end
    endfunction

    assign seg = (reset_tag) ? 8'b11111110 : hex2dig(data[select * 4 +: 4]);

endmodule
