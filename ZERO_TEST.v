`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 02:50:23
// Design Name: 
// Module Name: ZERO_TEST
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


module ZERO_TEST(
output [7:0]OUT,
input [7:0]A
    );
    
    wire [7:0]Y;
    xnor X1(Y[0],A[0],1'b0);
    xnor X2(Y[1],A[1],1'b0);
    xnor X3(Y[2],A[2],1'b0);
    xnor X4(Y[3],A[3],1'b0);
    xnor X5(Y[4],A[4],1'b0);
    xnor X6(Y[5],A[5],1'b0);
    xnor X7(Y[6],A[6],1'b0);
    xnor X8(Y[7],A[7],1'b0);
    
    and AND0(OUT,Y[0],Y[1],Y[2],Y[3],Y[4],Y[5],Y[6],Y[7]);
    
endmodule
