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
wire [7:0] s;
wire cout;
reg [7:0] a, b;
reg cin;

adder dut(a,b,cin,s,cout);

initial
begin
        a=8'b00000000;b=8'b00000001;cin=1'b0;
    #5  a=8'b00000010;b=8'b00000011;cin=1'b1;
    #5  a=8'b01000000;b=8'b00101000;cin=1'b0;
    #5  a=8'b00100010;b=8'b01100000;cin=1'b1;
    #5  a=8'b00100100;b=8'b00000001;cin=1'b0;
    #5  a=8'b10001000;b=8'b00100000;cin=1'b1;
    #5  a=8'b10100100;b=8'b01000010;cin=1'b0;
    #5  a=8'b10100010;b=8'b01010000;cin=1'b1;
    #5  a=8'b01001010;b=8'b01001001;cin=1'b0;
    #5  a=8'b11111111;b=8'b11111111;cin=1'b0;
    #10 $finish;


end
endmodule
