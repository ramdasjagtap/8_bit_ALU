`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 16:21:20
// Design Name: 
// Module Name: XOR_gate
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


module XOR_gate(
output [7:0]Y,
input [7:0]A,B
    );
    
    xor X1(Y[0],A[0],B[0]);
    xor X2(Y[1],A[1],B[1]);
    xor X3(Y[2],A[2],B[2]);
    xor X4(Y[3],A[3],B[3]);
    xor X5(Y[4],A[4],B[4]);
    xor X6(Y[5],A[5],B[5]);
    xor X7(Y[6],A[6],B[6]);
    xor X8(Y[7],A[7],B[7]);
 
endmodule