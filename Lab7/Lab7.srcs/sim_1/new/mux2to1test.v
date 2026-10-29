`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 02:43:41 PM
// Design Name: 
// Module Name: mux2to1test
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


module mux2to1test;
    reg i0;
    reg i1;
    reg sel;
    wire out;

mux2to1 DUT (
    .i0(i0),
    .i1(i1),
    .sel(sel),
    .out(out)
);

initial begin
    // test 1:
    sel = 0; i1 = 0; i0 = 0; #10
    // test 2:
    sel = 0; i1 = 1; i0 = 0; #10
    // test 3:
    sel = 0; i1 = 0; i0 = 1; #10
    // test 4:
    sel = 0; i1 = 1; i0 = 1; #10
    // test 5:
    sel = 1; i1 = 0; i0 = 0; #10
    // test 6:
    sel = 1; i1 = 1; i0 = 0; #10
    // test 7:
    sel = 1; i1 = 0; i0 = 1; #10
    // test 8:
    sel = 1; i1 = 1; i0 = 1; #10
        $stop;
    end
endmodule
    