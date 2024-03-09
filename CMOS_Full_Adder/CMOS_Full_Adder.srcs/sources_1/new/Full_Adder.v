`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2024 09:29:29 AM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input A, B, Ci,
    output S, Co
    );
    
    wire im1, im2, im3;
    
    XOR2 XO1 (A, B, im1);
    XOR2 XO2 (im1, Ci, S);
    
    AND2 A1 (A, B, im2);
    AND2 A2 (Ci, im1, im3);
    OR2 O1 (im2, im3, Co);
    
endmodule
