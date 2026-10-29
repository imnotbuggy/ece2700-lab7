`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2026 02:46:51 PM
// Design Name: 
// Module Name: fourtoonetest
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



module fourtoonetest;
    reg i0;
    reg i1;
    reg i2;
    reg i3;
    reg [0:1] sel;
    wire out;

mux4to1 DUT (
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .sel(sel),
    .out(out)
);
integer i;
initial begin
  for (i = 0; i < 64; i = 1+1) begin
    {i0, i1, i2, i3, sel} = i[5:0];   // unpack counter into individual bits
    #10;
    // check `out` against expected
  end
 end
endmodule
