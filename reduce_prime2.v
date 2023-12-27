`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/13 21:14:10
// Design Name: 
// Module Name: reduce_prime2
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


module reduce_prime2(
    input               clk,rst_n,
    input [37:0]        c,
    output reg [25:0]   res//
    );


always@(posedge clk or negedge rst_n)
    if(!rst_n)
        res <= 0;
    else
        res <= c[11:0] - c[37:12] + (c[37:12] << 12) - 25'd33550337;


endmodule
