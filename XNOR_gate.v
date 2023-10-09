`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 16:23:10
// Design Name: 
// Module Name: XNOR_gate
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


module XNOR_gate(
output [7:0]Y,
input [7:0]A,B
    );
    
    xnor no_1(Y[0],A[0],B[0]);
    xnor no_2(Y[1],A[1],B[1]);
    xnor no_3(Y[2],A[2],B[2]);
    xnor no_4(Y[3],A[3],B[3]);
    xnor no_5(Y[4],A[4],B[4]);
    xnor no_6(Y[5],A[5],B[5]);
    xnor no_7(Y[6],A[6],B[6]);
    xnor no_8(Y[7],A[7],B[7]);
 
endmodule
