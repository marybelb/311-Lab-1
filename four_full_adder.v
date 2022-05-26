`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 07:17:01 PM
// Design Name: 
// Module Name: four_full_adder
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


module four_full_adder(
    input Cin,
    input [3:0]A,
    input [3:0]B,
    output [3:0]S,
    output Cout,
    output C3,
    wire w1, w2, w3,
    output V
    );
    
    full_adder G1(.A(Cin), .B(A[0]), .Cin(B[0]), .Cout(w1), .S(S[0]));
    full_adder G2(.A(w1), .B(A[1]), .Cin(B[1]), .Cout(w2), .S(S[1]));
    full_adder G3(.A(w2), .B(A[2]), .Cin(B[2]), .Cout(w3), .S(S[2]));
    full_adder G4(.A(w3), .B(A[3]), .Cin(B[3]), .Cout(Cout), .S(S[3]));
    //full_adder G1(w1, S[0], A[0], B[0], Cin);
    //full_adder G2(w2, S[1], A[1], B[1], w1);
    //full_adder G3(w3, S[2], A[2], B[2], w2);
    //full_adder G4(Cout, S[3], A[3], B[3], w3);
    xor G5(V, Cout, w3);
    assign C3=w3;
endmodule
