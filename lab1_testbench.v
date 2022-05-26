`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2022 06:37:05 PM
// Design Name: 
// Module Name: lab1_testbench
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


module lab1_testbench(
    );
    reg A, B; 
    wire S, C;
    
    half_adder ha(.A(A), .B(B), .S(S), .C(C));
    
    initial
    begin
    A = 0; B = 0;
    end
    
    always
    begin
    #10 {A,B} = {A,B} + 1'b1;
    end
    
endmodule
