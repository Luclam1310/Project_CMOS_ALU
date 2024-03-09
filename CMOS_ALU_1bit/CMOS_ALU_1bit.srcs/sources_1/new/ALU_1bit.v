`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2024 03:39:09 PM
// Design Name: 
// Module Name: ALU_1bit
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


module ALU_1bit(
    input A, B, Ci, [0:1] F,
    output Out, Co
    );
    
    wire [0:2] Y_LU;
    wire [0:3] Y_DC;
    wire S0;
    
    Logic_Unit LU (A, B, Y_LU [0:2]);
    Decoder DC (F [0:1], Y_DC [0:3]);
    Full_Adder FA (A, B, Ci, S0, Co);
    
    wire im1, im2, im3, im4, im5, im6;
    
    AND2 A1 (Y_LU[0], Y_DC[0], im1);
    AND2 A2 (Y_LU[1], Y_DC[1], im2);
    AND2 A3 (Y_LU[2], Y_DC[2], im3);
    AND2 A4 (Y_DC[3], S0, im4);
    
    XOR2 XO1 (im1, im2, im5);
    XOR2 XO2 (im5, im3, im6);
    XOR2 XO3 (im6, im4, Out);
endmodule