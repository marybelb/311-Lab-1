`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2022 05:24:33 PM
// Design Name: 
// Module Name: behavioral_verilog
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


module behavioral_verilog(

input M,
input [3:0] A,B,
output [4:0] SUM
    );
    
    assign SUM = M?A+B:A-B; 
    
endmodule
