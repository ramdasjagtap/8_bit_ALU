`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 16:15:16
// Design Name: 
// Module Name: OR_gate
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


module OR_gate(
output [7:0]Y,
input [7:0]A,B
    );
    
    or o1(Y[0],A[0],B[0]);
    or o2(Y[1],A[1],B[1]);
    or o3(Y[2],A[2],B[2]);
    or o4(Y[3],A[3],B[3]);
    or o5(Y[4],A[4],B[4]);
    or o6(Y[5],A[5],B[5]);
    or o7(Y[6],A[6],B[6]);
    or o8(Y[7],A[7],B[7]);
 
    
endmodule
