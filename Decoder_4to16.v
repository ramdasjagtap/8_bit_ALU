`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 04:36:10
// Design Name: 
// Module Name: Decoder_4to16
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


module Decoder_4to16(
output D_OUT,
input D_IN
    );
  parameter temp = 16'b0000000000000001;
  assign D_OUT =(D_IN ==4'b0000)? temp<<0 :(D_IN == 4'b0001)?temp<<1:(D_IN == 4'b0010)?temp<<2:(D_IN == 4'b0011)?temp<<3:(D_IN == 4'b0100)?temp<<4:(D_IN == 4'b0101)?temp<<5:(D_IN == 4'b0110)?temp<<6:(D_IN == 4'b0111)?temp<<7:(D_IN == 4'b1000)?temp<<8:(D_IN == 4'b1001)?temp<<9:(D_IN == 4'b1010)?temp<<10:(D_IN == 4'b1011)?temp<<11:(D_IN == 4'b1100)?temp<<12:(D_IN == 4'b1101)?temp<<13:(D_IN == 4'b1110)?temp<<14:(D_IN == 4'b1111)?temp<<15:16'bxxxxxxxxxxxxxxxx;
    
endmodule
