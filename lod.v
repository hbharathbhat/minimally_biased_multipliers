`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: H Bharath Bhat 1JS21EC052
// 
// Create Date: 14.07.2024 20:06:23
// Design Name: Leading One Detector
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
    output reg [2:0] out
);
    always @(*) begin
        casex (in)
            8'b1xxxxxxx: out = 3'b111; // Leading one at position 7
            8'b01xxxxxx: out = 3'b110; // Leading one at position 6
            8'b001xxxxx: out = 3'b101; // Leading one at position 5
            8'b0001xxxx: out = 3'b100; // Leading one at position 4
            8'b00001xxx: out = 3'b011; // Leading one at position 3
            8'b000001xx: out = 3'b010; // Leading one at position 2
            8'b0000001x: out = 3'b001; // Leading one at position 1
            8'b00000001: out = 3'b000; // Leading one at position 0
            default: out = 3'b000; // No leading one
        endcase
    end
endmodule

