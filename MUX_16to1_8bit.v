`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 02:14:35
// Design Name: 
// Module Name: MUX_16to1_8bit
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


module MUX_16to1_8bit(
output [7:0]Y,
input [7:0]I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,
input [3:0]sel
    );
    
    wire [7:0]Y0,Y1;
    MUX_8to1_8bit MUX0(Y0,I0,I1,I2,I3,I4,I5,I6,I7,sel[2:0]);
    MUX_8to1_8bit MUX1(Y1,I8,I9,I10,I11,I12,I13,I14,I15,sel[2:0]);
    MUX_2to1_8bit MUX2(Y,Y0,Y1,sel[3]);
    
    
endmodule
