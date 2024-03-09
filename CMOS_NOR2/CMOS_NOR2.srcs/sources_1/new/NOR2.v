`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2024 10:49:57 AM
// Design Name: 
// Module Name: NOR2
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


module NOR2(
    input A, B,
    output Y
    );
    
    supply0 GND;
    supply1 Vdd;
    
    wire im1;
    
    pmos #(3) g1 (im1, Vdd, A);
    pmos #(3) g2 (Y, im1, B);
    
    nmos #(3) g3 (Y, GND, A);
    nmos #(3) g4 (Y, GND, B);
endmodule
