`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2024 18:56:28
// Design Name: 
// Module Name: barrel_shifter
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


module barrel_shifter (
    input [7:0] data_in,   // 8-bit input data
    input [2:0] shift,     // 3-bit shift amount (0 to 7)
    input dir,             // Direction: 0 for left, 1 for right
    output reg [7:0] data_out // 8-bit output data
);

always @(*) begin
    case (dir)
        1'b0: // Left shift
            case (shift)
                3'b000: data_out = data_in;
                3'b001: data_out = data_in << 1;
                3'b010: data_out = data_in << 2;
                3'b011: data_out = data_in << 3;
                3'b100: data_out = data_in << 4;
                3'b101: data_out = data_in << 5;
                3'b110: data_out = data_in << 6;
                3'b111: data_out = data_in << 7;
                default: data_out = data_in;
            endcase
        1'b1: // Right shift
            case (shift)
                3'b000: data_out = data_in;
                3'b001: data_out = data_in >> 1;
                3'b010: data_out = data_in >> 2;
                3'b011: data_out = data_in >> 3;
                3'b100: data_out = data_in >> 4;
                3'b101: data_out = data_in >> 5;
                3'b110: data_out = data_in >> 6;
                3'b111: data_out = data_in >> 7;
                default: data_out = data_in;
            endcase
        default: data_out = data_in;
    endcase
end

endmodule

