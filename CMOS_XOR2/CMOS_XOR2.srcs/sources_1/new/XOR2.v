`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2024 10:30:06 PM
// Design Name: 
// Module Name: XOR2
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


module XOR2(
    input A, B,
    output Y
    );
    
    wire _A, _B;
    
    NOT N1 (A, _A);
    NOT N2 (B, _B);
    
    supply0 GND;
    supply1 Vdd;
    
    wire im1, im2, im3;
    
    pmos #(3) g1 (im1, Vdd, _A);
    pmos #(3) g2 (im1, Vdd, _B);
    pmos #(3) g3 (Y, im1, A);
    pmos #(3) g4 (Y, im1, B);
    
    nmos #(3) g5 (Y, im2, _A);
    nmos #(3) g6 (Y, im3, A);
    nmos #(3) g7 (im2, GND, _B);
    nmos #(3) g8 (im3, GND, B);
    
endmodule