`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 16:11:06
// Design Name: 
// Module Name: AND_gate
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


module AND_gate(
output [7:0]Y,
input [7:0]A,B
    );
    
    and a1(Y[0],A[0],B[0]);
    and a2(Y[1],A[1],B[1]);
    and a3(Y[2],A[2],B[2]);
    and a4(Y[3],A[3],B[3]);
    and a5(Y[4],A[4],B[4]);
    and a6(Y[5],A[5],B[5]);
    and a7(Y[6],A[6],B[6]);
    and a8(Y[7],A[7],B[7]);
    //and a9(Y[8],A[8],B[8]);
    
endmodule
