`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2023 00:53:51
// Design Name: 
// Module Name: Subtractor_1bit
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


module Subtractor_1bit(
output diff,borrow_out,
input A,B,borrow_in
    );
    wire A_bar;
    wire XOR_1_out;
    wire XOR_1_out_bar;
    wire AND_1_out;
    nor N1(A_bar,A);
    nor N2(XOR_1_out_bar,XOR_1_out);
    
    xor X1(XOR_1_out,A,B);
    and A1(AND_1_out,A_bar,B);
    
    xor X2(diff,XOR_1_out,borrow_in);
    and A2(AND_2_out,XOR_1_out_bar,borrow_in);
    
    or OR(borrow_out,AND_1_out,AND_2_out);
    
endmodule
