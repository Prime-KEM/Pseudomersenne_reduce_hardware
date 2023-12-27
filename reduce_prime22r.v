`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/14 15:28:34
// Design Name: 
// Module Name: reduce_prime22r
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


module reduce_prime22r(
    input               clk,rst_n,
    input [50:0]        c,
    output reg [25:0]   res//
    );

reg [50:0] r0;

always@(posedge clk or negedge rst_n)
    if(!rst_n)
        r0 <= 0;
    else
        r0 <= c[11:0] - c[50:12] + (c[50:12] << 12);

always@(posedge clk or negedge rst_n)
    if(!rst_n)
        res <= 0;
    else
        res <= r0[11:0] - r0[50:12] + (r0[50:12] << 12) - 25'd33550337;

endmodule
