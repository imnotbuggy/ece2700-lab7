`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2026 02:39:21 PM
// Design Name: 
// Module Name: 4to1mux
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


module mux4to1(
    input i0, i1, i2, i3,
    input [1:0]sel,
    output out
    );
    
    wire w0, w1;
    
    mux2to1 step1 (.i0(i0), .i1(i1), .sel(sel[0]), .out(w0));
    
    mux2to1 step2 (.i0(i2), .i1(i3), .sel(sel[0]), .out(w1));
    
    mux2to1 step3 (.i0(w0), .i1(w1), .sel(sel[1]), .out(out));
    
endmodule
