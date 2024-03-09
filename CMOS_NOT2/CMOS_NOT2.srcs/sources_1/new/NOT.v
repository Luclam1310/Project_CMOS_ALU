`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2024 10:22:04 PM
// Design Name: 
// Module Name: NOT
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


module NOT(
    input A,
    output Y
    );
    
    supply0 GND;
    supply1 Vdd;
    
    pmos # (3) g1 (Y, Vdd, A);
    nmos # (3) g2 (Y, GND, A);
endmodule
