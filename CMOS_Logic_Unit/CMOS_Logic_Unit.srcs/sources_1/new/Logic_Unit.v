`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2024 02:38:01 PM
// Design Name: 
// Module Name: Logic_Unit
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


module Logic_Unit(
    input A, B,
    output [0:2] Y
    );
    
    NOT N1 (A, Y[0]);
    OR2 O1 (A, B, Y[1]);
    AND2 A1 (A, B, Y[2]);
endmodule
