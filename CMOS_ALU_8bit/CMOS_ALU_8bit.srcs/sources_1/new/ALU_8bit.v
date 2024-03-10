`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2024 02:14:39 PM
// Design Name: 
// Module Name: ALU_8bit
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


module ALU_8bit(
    input Ci, [7:0] A, [7:0] B, [0:1] F,
    output [7:0] Out, [7:0]Co
    );
    
    ALU_1bit U0 (A[0], B[0], Ci, F[0:1], Out[0], Co[0]);
    ALU_1bit U1 (A[1], B[1], Co[0], F[0:1], Out[1], Co[1]);
    ALU_1bit U2 (A[2], B[2], Co[1], F[0:1], Out[2], Co[2]);
    ALU_1bit U3 (A[3], B[3], Co[2], F[0:1], Out[3], Co[3]);
    ALU_1bit U4 (A[4], B[4], Co[3], F[0:1], Out[4], Co[4]);
    ALU_1bit U5 (A[5], B[5], Co[4], F[0:1], Out[5], Co[5]);
    ALU_1bit U6 (A[6], B[6], Co[5], F[0:1], Out[6], Co[6]);
    ALU_1bit U7 (A[7], B[7], Co[6], F[0:1], Out[7], Co[7]);
    
endmodule
