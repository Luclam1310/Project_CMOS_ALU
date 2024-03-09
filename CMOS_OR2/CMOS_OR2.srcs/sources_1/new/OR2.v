`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2024 10:58:38 AM
// Design Name: 
// Module Name: OR2
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


module OR2(
    input A, B,
    output Y
    );
    
    wire _Y;
    
    NOR2 NO1 (A, B, _Y);
    NOT N1 (_Y, Y);
endmodule
