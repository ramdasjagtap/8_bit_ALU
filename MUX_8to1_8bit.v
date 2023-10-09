`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 01:43:56
// Design Name: 
// Module Name: MUX_8to1_8bit
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


module MUX_8to1_8bit(
output [7:0]Y,
input [7:0]I0,I1,I2,I3,I4,I5,I6,I7,
input [2:0]sel
    );
 MUX_8to1_1bit MUX0(Y[0],I0[0],I1[0],I2[0],I3[0],I4[0],I5[0],I6[0],I7[0],sel[2:0]);
 MUX_8to1_1bit MUX1(Y[1],I0[1],I1[1],I2[1],I3[1],I4[1],I5[1],I6[1],I7[1],sel[2:0]);
 MUX_8to1_1bit MUX2(Y[2],I0[2],I1[2],I2[2],I3[2],I4[2],I5[2],I6[2],I7[2],sel[2:0]);  
 MUX_8to1_1bit MUX3(Y[3],I0[3],I1[3],I2[3],I3[3],I4[3],I5[3],I6[3],I7[3],sel[2:0]);
 MUX_8to1_1bit MUX4(Y[4],I0[4],I1[4],I2[4],I3[4],I4[4],I5[4],I6[4],I7[4],sel[2:0]);
 MUX_8to1_1bit MUX5(Y[5],I0[5],I1[5],I2[5],I3[5],I4[5],I5[5],I6[5],I7[5],sel[2:0]);
 MUX_8to1_1bit MUX6(Y[6],I0[6],I1[6],I2[6],I3[6],I4[6],I5[6],I6[6],I7[6],sel[2:0]);
 MUX_8to1_1bit MUX7(Y[7],I0[7],I1[7],I2[7],I3[7],I4[7],I5[7],I6[7],I7[7],sel[2:0]);
 
endmodule
