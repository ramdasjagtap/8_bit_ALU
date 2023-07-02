`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 15:53:39
// Design Name: 
// Module Name: Add_Sub_module
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


module Add_Sub_module(
output [7:0]Sum,
output Carry,
output Overflow,
input [7:0]A,B,
input Cin
);

wire c1,c2,c3,c4,c5,c6,c7,c8;
wire [7:0]b;

xor X1(b[0],B[0],Cin);
xor X2(b[1],B[1],Cin);
xor X3(b[2],B[2],Cin);
xor X4(b[3],B[3],Cin);
xor X5(b[4],B[4],Cin);
xor X6(b[5],B[5],Cin);
xor X7(b[6],B[6],Cin);
xor X8(b[7],B[7],cin);

Full_adder FA0(A[0],b[0],Cin,Sum[0],c1);
Full_adder FA1(A[1],b[1],c1,Sum[1],c2);
Full_adder FA2(A[2],b[2],c2,Sum[2],c3);
Full_adder FA3(A[3],b[3],c3,Sum[3],c4);
Full_adder FA4(A[4],b[4],c4,Sum[4],c5);
Full_adder FA5(A[5],b[5],c5,Sum[5],c6);
Full_adder FA6(A[6],b[6],c6,Sum[6],c7);
Full_adder FA7(A[7],b[7],c7,Sum[7],c8);

xor X9(Overflow,c7,c8);
xor X10(Carry,Cin,c8);

endmodule
