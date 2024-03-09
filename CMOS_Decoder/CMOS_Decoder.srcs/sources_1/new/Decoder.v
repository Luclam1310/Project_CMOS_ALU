`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2024 02:26:36 PM
// Design Name: 
// Module Name: Decoder
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


module Decoder(
    input [0:1] F,
    output [0:3] Y
    );
    
    wire _F0, _F1;
    
    NOT N1 (F[0], _F0);
    NOT N2 (F[1], _F1);
    
    AND2 A1 (_F0, _F1, Y[0]);
    AND2 A2 (_F0, F[1], Y[1]);
    AND2 A3 (F[0], _F1, Y[2]);
    AND2 A4 (F[0], F[1], Y[3]);
endmodule
