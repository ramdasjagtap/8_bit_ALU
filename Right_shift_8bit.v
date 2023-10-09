`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2023 22:07:50
// Design Name: 
// Module Name: Right_shift_8bit
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


module Right_shift_8bit(
output [7:0]Y,
input [7:0]A,
input [3:0]B
    );
    
    wire L0,L1,L2,L3,L4,L5,L6,L7;
    wire R0,R1,R2,R3,R4,R5,R6,R7;
    assign R0 = {A[7:0]};
    assign R1 ={A[6:0],1'b0};
    assign R2 ={A[5:0],2'b00};
    assign R3 ={A[4:0],3'b000};
    assign R4 ={A[3:0],4'b0000};
    assign R5 ={A[2:0],5'b00000};
    assign R6 ={A[1:0],6'b000000};
    assign R7 ={A[0:0],7'b0000000};
    
    
    
    //to select shifting operation we need mux
    MUX_8to1_8bit MUX1(Y,R0,R1,R2,R3,R4,R5,R6,R7,B[2:0]);
    
endmodule