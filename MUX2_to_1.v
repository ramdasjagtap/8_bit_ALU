`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 21:22:46
// Design Name: 
// Module Name: MUX2_to_1
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


module MUX2_to_1(
output Y,
input I0,
input I1,
input select
    );
    wire select1;
    wire Y1,Y2;
    not NOT1(select1,select);
    and AND1(Y1,I0,select1);
    and AND2(Y2,I1,select);
    or OR1(Y,Y1,Y2);
endmodule
