`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2026 05:41:19 PM
// Design Name: 
// Module Name: decoder4to16
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


module decoder4to16(
    input wire [3:0]d,
    input wire en,
    output wire [15:0]y
    );
    wire w0, w1, dflip;
    not flip (dflip, d[3]);
    and first ( w0, dflip, en);
    and second ( w1, d[3], en);
    decoder3to8 one (.d(d[2:0]), .y(y[7:0]), .en(w0) );
    decoder3to8 two (.d(d[2:0]), .y(y[15:8]), .en(w1) );
    
    
    
endmodule


