`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2024 11:36:39 PM
// Design Name: 
// Module Name: AND2
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


module AND2(
    input A, B,
    output Y
    );
    
    wire im1;
    
    NAND2 NA (A, B, im1);
    NOT N (im1, Y);
endmodule
