`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 15:22:40
// Design Name: 
// Module Name: Half_adder_tb
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


module Half_adder_tb();

reg A;
reg B;
wire sum;
wire carry;

Half_adder HA(.A(A),.B(B),.Sum(sum),.Carry(carry));

initial 
begin
A = 1'b0;
B = 1'b0;
#10
A = 1'b0;
B = 1'b1;
#10
A = 1'b1;
B = 1'b0;
#10
A = 1'b1;
B = 1'b1;
end
endmodule
