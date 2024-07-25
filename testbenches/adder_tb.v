`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2024 14:35:58
// Design Name: 
// Module Name: adder_tb
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


module adder_tb;
wire [10:0] s;
wire cout;
reg [10:0] a, b;
reg cin;

adder dut(a,b,cin,s,cout);

initial
begin
        a=10'b0000000000;b=10'b0000000001;cin=1'b0;
    #5  a=10'b0000000010;b=10'b0000000011;cin=1'b1;
    #5  a=10'b0100000000;b=10'b0000101000;cin=1'b0;
    #5  a=10'b0000100010;b=10'b0001100000;cin=1'b1;
    #5  a=10'b0000100100;b=10'b0000000001;cin=1'b0;
    #5  a=10'b1000001000;b=10'b0000100000;cin=1'b1;
    #5  a=10'b1000100100;b=10'b0001000010;cin=1'b0;
    #5  a=10'b1000100010;b=10'b0001010000;cin=1'b1;
    #5  a=10'b0100001010;b=10'b0001001001;cin=1'b0;
    #5  a=10'b1100111111;b=10'b0011111111;cin=1'b0;
    #10 $finish;


end
endmodule
