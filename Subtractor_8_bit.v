`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2023 01:03:43
// Design Name: 
// Module Name: Subtractor_8_bit
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


module Subtractor_8_bit(
output [7:0]diff,
output borrow_out,
input [7:0]A,B,
input borrow_in
    );
    wire b1,b2,b3,b4,b5,b6,b7;
    Subtractor_1bit SUB1(diff[0],b1,A[0],B[0],borrow_in);
    Subtractor_1bit SUB2(diff[1],b2,A[1],B[1],b1);
    Subtractor_1bit SUB3(diff[2],b3,A[2],B[2],b2);
    Subtractor_1bit SUB4(diff[3],b4,A[3],B[3],b3);
    Subtractor_1bit SUB5(diff[4],b5,A[4],B[4],b4);
    Subtractor_1bit SUB6(diff[5],b6,A[5],B[5],b5);
    Subtractor_1bit SUB7(diff[6],b7,A[6],B[6],b6);
    Subtractor_1bit SUB8(diff[7],borrow_out,A[7],B[7],b7);
endmodule
