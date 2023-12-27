`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/13 16:33:27
// Design Name: 
// Module Name: reduce_prime
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


module reduce_prime(
    input               clk,rst_n,
    input [41:0]        c,
    output reg [24:0]   res//
    );



always@(posedge clk or negedge rst_n)
    if(!rst_n)
        res <= 0;
    else
        res <= c[23:0] - c[41:24] + (c[41:24] << 6) - 24'd16777153;




endmodule
