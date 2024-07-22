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


module adder(input [7:0] a, b, input cin, output [7:0] s, output cout);

wire c0,c1,c2,c3,c4,c5,c6;

full_adder fa0(a[0], b[0], cin, s[0], c0);
full_adder fa1(a[1], b[1], c0, s[1], c1);
full_adder fa2(a[2], b[2], c1, s[2], c2);
full_adder fa3(a[3], b[3], c2, s[3], c3);
full_adder fa4(a[4], b[4], c3, s[4], c4);
full_adder fa5(a[5], b[5], c4, s[5], c5);
full_adder fa6(a[6], b[6], c5, s[6], c6);
full_adder fa7(a[7], b[7], c6, s[7], cout);

endmodule
