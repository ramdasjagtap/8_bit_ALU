`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2023 15:43:55
// Design Name: 
// Module Name: Full_adder_tb
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


module Full_adder_tb();
reg A;
reg B;
reg Cin;

wire Sum;
wire Carry;

Full_adder FA(.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Carry(Carry));

initial
begin
A = 1'b0;
B = 1'b0;
Cin = 1'b0;
#10
A = 1'b0;
B = 1'b0;
Cin = 1'b1;
#10
A = 1'b0;
B = 1'b1;
Cin = 1'b0;
#10
A = 1'b0;
B = 1'b1;
Cin = 1'b1;
#10
A = 1'b1;
B = 1'b0;
Cin = 1'b0;
#10
A = 1'b1;
B = 1'b0;
Cin = 1'b1;
#10
A = 1'b1;
B = 1'b1;
Cin = 1'b0;
#10
A = 1'b1;
B = 1'b1;
Cin = 1'b1;
end
endmodule
