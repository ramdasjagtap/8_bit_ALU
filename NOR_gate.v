`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 16:20:39
// Design Name: 
// Module Name: NOR_gate
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


module NOR_gate(
output [7:0]Y,
input [7:0]A,B
    );
    
    nor no1(Y[0],A[0],B[0]);
    nor no2(Y[1],A[1],B[1]);
    nor no3(Y[2],A[2],B[2]);
    nor no4(Y[3],A[3],B[3]);
    nor no5(Y[4],A[4],B[4]);
    nor no6(Y[5],A[5],B[5]);
    nor no7(Y[6],A[6],B[6]);
    nor no8(Y[7],A[7],B[7]);
 
endmodule
