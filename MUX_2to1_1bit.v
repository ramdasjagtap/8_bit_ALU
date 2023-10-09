`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 01:25:06
// Design Name: 
// Module Name: MUX_2to1_1bit
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


module MUX_2to1_1bit(
output Y,
input I0,I1,
input select
    );
    wire selectbar;
    wire Y0,Y1;
    not N1(selectbar,select);
    and A0(Y0,I0,selectbar);
    and A1(Y1,I1,select);
    or O1(Y,Y0,Y1);
endmodule
