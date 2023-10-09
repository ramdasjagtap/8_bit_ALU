`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 01:13:08
// Design Name: 
// Module Name: NAND_gate
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


module NAND_gate(
output [7:0]Y,
input [7:0]A,B
    );
    nand NAND0(Y[0],A[0],B[0]);
    nand NAND1(Y[1],A[1],B[1]);
    nand NAND2(Y[2],A[2],B[2]);
    nand NAND3(Y[3],A[3],B[3]);
    nand NAND4(Y[4],A[4],B[4]);
    nand NAND5(Y[5],A[5],B[5]);
    nand NAND6(Y[6],A[6],B[6]);
    nand NAND7(Y[7],A[7],B[7]);
endmodule
