`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2024 20:06:23
// Design Name: 
// Module Name: lod
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


module lod (
    input [7:0] in,
    output reg [7:0] out
);
    always @(*) begin
        casex (in)
            8'b1xxxxxxx: out = 8'b10000000; // Leading one at position 8
            8'b01xxxxxx: out = 8'b01000000; // Leading one at position 7
            8'b001xxxxx: out = 8'b00100000; // Leading one at position 6
            8'b0001xxxx: out = 8'b00010000; // Leading one at position 5
            8'b00001xxx: out = 8'b00001000; // Leading one at position 4
            8'b000001xx: out = 8'b00000100; // Leading one at position 3
            8'b0000001x: out = 8'b00000010; // Leading one at position 2
            8'b00000001: out = 8'b00000001; // Leading one at position 1
            default: out = 8'b00000000; // No leading one
        endcase
    end
endmodule

