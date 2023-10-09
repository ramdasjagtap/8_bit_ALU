`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2023 01:13:18
// Design Name: 
// Module Name: Subtractor_8_bit_tb
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


module Subtractor_8_bit_tb();
reg [7:0]A,B;
reg borrow_in;
wire [7:0]diff;
wire borrow_out;
reg clk;
Subtractor_8_bit SUB(.diff(diff),.borrow_out(borrow_out),.A(A),.B(B));

//Chat gpt
  
  // Testbench code
  initial begin
    // Initialize inputs
    A = 8'b10101010;
    B = 8'b01010101;
    
    // Toggle clock every 10 time units
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  // Monitor the difference output
  always @(posedge clk) begin
    $display("Difference = %b", diff);

end
endmodule
