`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/14 15:24:28
// Design Name: 
// Module Name: reduce_prime2r
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module reduce_prime2r(
    input               clk,rst_n,
    input [69:0]        c,
    output reg [24:0]   res//
    );

reg [69:0] r0;

always@(posedge clk or negedge rst_n)
    if(!rst_n)
        r0 <= 0;
    else
        r0 <= c[23:0] - c[69:24] + (c[69:24] << 6);

always@(posedge clk or negedge rst_n)
    if(!rst_n)
        res <= 0;
    else
        res <= r0[23:0] - r0[69:24] + (r0[69:24] << 6) - 24'd16777153;

endmodule
