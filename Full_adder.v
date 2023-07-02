`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 15:34:00
// Design Name: 
// Module Name: Full_adder
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


module Full_adder(
input A,B,Cin,
output Sum,Carry
    );
    
 wire s1,c1,c2;
 
 Half_adder HA0(A,B,s1,c1);
 Half_adder HA1(s1,Cin,Sum,c2);
 or or1(Carry,c1,c2);
 
endmodule
