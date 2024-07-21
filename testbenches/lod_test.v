`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2024 20:34:42
// Design Name: 
// Module Name: lod_test
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


module lod_test;
wire [7:0] out;
reg [7:0] in;

lod test1(in,out);

initial
begin
        in=8'b00000001;
    #10 in=8'b00000010;
    #10 in=8'b00010000;
    #10 in=8'b00001000;
    #10 in=8'b00010000;
    #10 in=8'b00101000;
    #10 in=8'b01000100;
    #10 in=8'b10100000;
    #100 $finish;
end

endmodule
