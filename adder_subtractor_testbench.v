`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2022 04:45:37 PM
// Design Name: 
// Module Name: adder_subtractor_testbench
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


module adder_subtractor_testbench(

    );
    
    reg M;
    reg [3:0] A, B; 
    wire C;
    wire [3:0] S;
    wire V;
    
    adder_subtracter as(.M(M), .A(A), .B(B), .C(C), .S(S), .V(V));
    
    initial begin
    M = 0;
    A = 0;
    B = 0;
    end
    
    always begin
    #10 {A,B,M} = {A,B,M} + 1'b1;
    end
    
endmodule
