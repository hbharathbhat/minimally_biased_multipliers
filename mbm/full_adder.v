`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2024 14:07:07
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


module full_adder(input a, b, cin, output s, cout);
wire w1, w2, w3;
 
assign w1=a^b;
assign s=w1^cin;

assign w2=a&b;
assign w3=cin&w1;
assign cout=w2|w3;

endmodule
