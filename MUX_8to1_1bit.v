`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2023 01:34:19
// Design Name: 
// Module Name: MUX_8to1_1bit
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


module MUX_8to1_1bit(
output reg Y,
input I0,I1,I2,I3,I4,I5,I6,I7,
input [2:0]sel
    );
    /*
    wire S0,S1,S2;
    wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
    not N0(S0,sel_0);
    not N1(S1,sel_1);
    not N2(S2,sel_2);
    
    and A0(Y0,I0,S2,S1,S0);
    and A1(Y1,I1,S2,S1,sel_0);
    and A2(Y2,I2,S2,sel_1,S0);
    and A3(Y3,I3,S2,sel_1,sel_0);
    and A4(Y4,I4,sel_2,S1,S0);
    and A5(Y5,I5,sel_2,S1,sel_0);
    and A6(Y6,I6,sel_2,sel_1,S0);
    and A7(Y7,I7,sel_2,sel_1,sel_0);
    wire Z0,Z1;
    or O0(Z0,Y0,Y1,Y2,Y3);
    or O1(Z1,Y4,Y5,Y6,Y7);
    or O2(Y,Z0,Z1);
    */
always @(*) 
    case(sel) 
        3'd0:Y=I0; 
        3'd1:Y=I1; 
        3'd2:Y=I2; 
        3'd3:Y=I3; 
        3'd4:Y=I4; 
        3'd5:Y=I5; 
        3'd6:Y=I6; 
        3'd7:Y=I7; 
    endcase 
    
endmodule
