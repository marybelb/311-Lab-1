`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 07:48:04 PM
// Design Name: 
// Module Name: adder_subtracter
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


module adder_subtracter(
    input [3:0]A,
    input [3:0]B,
    input M,
    output C,
    output V,
    output [3:0]S,
    wire [3:0] w,
    wire w0
    );
    
    xor G1(w[0], M, B[0]);
    xor G2(w[1], M, B[1]);
    xor G3(w[2], M, B[2]);
    xor G4(w[3], M, B[3]);
    
    four_full_adder f1(.Cin(M), .A(A), .B(w), .C3(C), .S(S), .w3(w0));
    //input Cin,
    //input [3:0]A,
    //input [3:0]B,
    //output [3:0]S,
    //output Cout,
    //output C3,
    //wire w1, w2, w3
    //full_adder G5(S[0], c1, M, A[0], w1);
    //full_adder G6(S[1], c2, c1, A[1], w2);
    //full_adder G7(S[2], c3, c2, A[2], w3);
    //full_adder G8(S[3], C, c3, A[3], w4);
    xor G5(V, w0, C);
endmodule
