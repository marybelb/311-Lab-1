`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 06:48:56 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input A,
    input B,
    input Cin,
    output Cout,
    output S
    );
     wire w1, w2, w3;
    //half_adder G1(w1, w2, A, B);
    //half_adder G2(w3, S, Cin, w1);
    half_adder ha(.A(A), .B(B), .S(w1), .C(w2));
    half_adder ha2(.A(w1), .B(Cin), .S(S), .C(w3));
    or G3(Cout, w3, w2);
    
endmodule
