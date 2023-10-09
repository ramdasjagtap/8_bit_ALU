`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 02:27:01
// Design Name: 
// Module Name: ALU_Block
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


module ALU_Block(
output [7:0]OUT,
output carry,overflow,zero,
input [7:0]A,B,
input [3:0]opcode
    );
    
    wire ADD_SUB_Carry,ADD_SUB_OF;
    wire [7:0]ADD_SUB_OUT;
    Add_Sub_module ADD_SUB(ADD_SUB_OUT,ADD_SUB_Carry,ADD_SUB_OF,A,B,opcode[0]);
    
    wire [7:0]LU_OUT[5:0];//LU_OUT1,LU_OUT2,LU_OUT3,LU_OUT4,LU_OUT5;
    Logical_unit LU(LU_OUT[0],LU_OUT[1],LU_OUT[2],LU_OUT[3],LU_OUT[4],LU_OUT[5],A,B);
    
    wire [7:0]SHIFT_OUT;
    SHIFTER SHIFT(SHIFT_OUT,A,B[7:4]);
    
    MUX_16to1_8bit MUX(OUT,ADD_SUB_OUT,ADD_SUB_OUT,LU_OUT0,LU_OUT[1],LU_OUT[2],LU_OUT[3],LU_OUT[4],LU_OUT[5],SHIFT_OUT,8'bx,8'bx,8'bx,8'bx,8'bx,8'bx,8'bx,opcode);
    
    wire S;
    nor NOR(S,opcode[1],opcode[2],opcode[3]);
    
    and AND0(carry,ADD_SUB_Carry,S);
    and AND1(overflow,ADD_SUB_OF,S);
    
    ZERO_TEST ZERO(zero,OUT);
    
endmodule
