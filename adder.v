`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2024 14:05:59
// Design Name: 
// Module Name: adder
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


module adder(input [4:0] a, b, input cin, output [4:0] s, output cout);

wire c0,c1,c2,c3;

full_adder fa0(a[0], b[0], cin, s[0], c0);
full_adder fa1(a[1], b[1], c0, s[1], c1);
full_adder fa2(a[2], b[2], c1, s[2], c2);
full_adder fa3(a[3], b[3], c2, s[3], cout);
//full_adder fa4(a[4], b[4], c3, s[4], cout);

endmodule
