`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 04:23:51
// Design Name: 
// Module Name: Control_Unit
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


module Control_Unit(
output[7:0]OUT,
output carry,overflow,zero,
input [19:0]INSTRUCTION
    );
    
    wire [15:0]DE_OUT;
    Decoder_4to16 DECODE(DE_OUT,INSTRUCTION[19:16]);
    
    wire [3:0]opcode;
    assign opcode[0] = DE_OUT[1] | DE_OUT[3] | DE_OUT[5] |DE_OUT[7] | DE_OUT[9] | DE_OUT[11] |DE_OUT[13] | DE_OUT[15];
    assign opcode[1] = DE_OUT[2] | DE_OUT[3] | DE_OUT[6] |DE_OUT[7] | DE_OUT[10] | DE_OUT[11] |DE_OUT[14] | DE_OUT[15];
    assign opcode[2] = DE_OUT[4] | DE_OUT[5] | DE_OUT[6] | DE_OUT[7] | DE_OUT[12] | DE_OUT[13] | DE_OUT[14] | DE_OUT[15];
    assign opcode[3] = DE_OUT[8] | DE_OUT[9] | DE_OUT[10] | DE_OUT[11] | DE_OUT[12] | DE_OUT[13] | DE_OUT[14] | DE_OUT[15];
    
    ALU_Block ALU(OUT,carry,overflow,zero,A,B,opcode);

endmodule
