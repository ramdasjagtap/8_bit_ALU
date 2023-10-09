`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2023 00:49:47
// Design Name: 
// Module Name: ALU
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


module ALU(
output reg[7:0]ALU_out,
output reg carry_out,
input [7:0]A,B,
input [2:0]opcode,
input clk,rst
    );
    wire [7:0]AND_out;
    wire [7:0]OR_out;
    wire [7:0]XOR_out;
    wire [7:0]XNOR_out;
    wire [7:0]NOR_out;
    wire [7:0]NAND_out;
    
    wire [7:0]FA_out;
    wire carry;
    wire [7:0]SUB_out;
  
    
    always @(posedge clk or negedge rst)
    begin
    if(!rst)
    begin
    ALU_out <= 6'b000000;
    carry_out <= 1'b0;
    end
    else
    begin
    case(opcode)
    2'b00:ALU_out <= AND_out;
    2'b01:begin
           ALU_out <= FA_out;
           carry_out <= carry;
          end
     2'b10:ALU_out <= MUL_out;
      endcase
    end
    end
endmodule
