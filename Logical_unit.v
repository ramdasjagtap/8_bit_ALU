`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 01:16:33
// Design Name: 
// Module Name: Logical_unit
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


module Logical_unit(
output [7:0]Y0,Y1,Y2,Y3,Y4,Y5,
input [7:0]A,B
    );
    AND_gate AND0(Y0,A,B);
    OR_gate OR0(Y1,A,B);
    NAND_gate NAND(Y2,A,B);
    NOR_gate NOR0(Y3,A,B);
    XOR_gate XOR0(Y4,A,B);
    XNOR_gate XNOR0(Y5,A,B);
    
endmodule
