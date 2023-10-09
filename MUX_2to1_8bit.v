`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 01:30:02
// Design Name: 
// Module Name: MUX_2to1_8bit
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


module MUX_2to1_8bit(
output [7:0]Y,
input [7:0]A,B,
input select
    );
    MUX_2to1_1bit MUX0(Y[0],A[0],B[0],select);
    MUX_2to1_1bit MUX1(Y[1],A[1],B[1],select);
    MUX_2to1_1bit MUX2(Y[2],A[2],B[2],select);
    MUX_2to1_1bit MUX3(Y[3],A[3],B[3],select);
    MUX_2to1_1bit MUX4(Y[4],A[4],B[4],select);
    MUX_2to1_1bit MUX5(Y[5],A[5],B[5],select);
    MUX_2to1_1bit MUX6(Y[6],A[6],B[6],select);
    MUX_2to1_1bit MUX7(Y[7],A[7],B[7],select); 
    
endmodule
