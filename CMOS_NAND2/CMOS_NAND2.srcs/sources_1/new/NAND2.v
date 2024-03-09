`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2024 11:22:43 PM
// Design Name: 
// Module Name: NAND2
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


module NAND2(
    input A, B,
    output Y
    );
    
    supply0 GND;
    supply1 Vdd;
    
    wire im1;
    
    pmos #(4) g1 ( Y, Vdd, A );
    pmos #(4) g2 ( Y, Vdd, B );
    
    nmos #(3) g3 ( Y, im1, A );
    nmos #(3) g4 ( im1, GND, B );
endmodule
