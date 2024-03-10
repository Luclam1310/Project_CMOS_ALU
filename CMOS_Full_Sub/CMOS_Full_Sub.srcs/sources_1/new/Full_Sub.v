`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2024 01:38:19 PM
// Design Name: 
// Module Name: Full_Sub
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


module Full_Sub(
    input A, B, Ci,
    output D, Co
    );
    
    wire _A;
    wire im1, im2, im3;
    wire _im1;
    
    NOT N2 (im1, _im1);
    NOT N1 (A, _A);
    
    XOR2 XO1 (A, B, im1);
    XOR2 XO2 (im1, Ci, D);
    
    AND2 A1 (_A, B, im2);
    AND2 A2 (_im1, Ci, im3);
    OR2 O1 (im2, im3, Co);
endmodule
