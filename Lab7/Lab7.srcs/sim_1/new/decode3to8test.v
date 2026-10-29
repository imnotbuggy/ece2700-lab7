`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2026 04:51:23 PM
// Design Name: 
// Module Name: decode3to8test
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


module decode3to8test;
    reg [2:0]d;
    reg en;
    wire [7:0]y;
decoder3to8 DUT (
    .d(d),
    .en(en),
    .y(y)
);
initial begin

en = 0; d[0] = 0; d[1] = 0; d[2] = 0; #10
en = 0; d[0] = 0; d[1] = 0; d[2] = 1; #10
en = 0; d[0] = 0; d[1] = 1; d[2] = 0; #10
en = 0; d[0] = 0; d[1] = 1; d[2] = 1; #10
en = 0; d[0] = 1; d[1] = 0; d[2] = 0; #10
en = 0; d[0] = 1; d[1] = 0; d[2] = 1; #10
en = 0; d[0] = 1; d[1] = 1; d[2] = 0; #10
en = 0; d[0] = 1; d[1] = 1; d[2] = 1; #10
en = 1; d[0] = 0; d[1] = 0; d[2] = 0; #10
en = 1; d[0] = 0; d[1] = 0; d[2] = 1; #10
en = 1; d[0] = 0; d[1] = 1; d[2] = 0; #10
en = 1; d[0] = 0; d[1] = 1; d[2] = 1; #10
en = 1; d[0] = 1; d[1] = 0; d[2] = 0; #10
en = 1; d[0] = 1; d[1] = 0; d[2] = 1; #10
en = 1; d[0] = 1; d[1] = 1; d[2] = 0; #10
en = 1; d[0] = 1; d[1] = 1; d[2] = 1; #10




        $stop;
    end
endmodule