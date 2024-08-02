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
    input [2:0] shift,     // 3-bit shift amount (0 to 7
    output reg [6:0] data_out // 8-bit output data
);
reg [7:0] data_outt;

always @(*) begin
            case (shift)
                3'b000: data_outt = data_in;
                3'b001: data_outt = data_in << 1;
                3'b010: data_outt = data_in << 2;
                3'b011: data_outt = data_in << 3;
                3'b100: data_outt = data_in << 4;
                3'b101: data_outt = data_in << 5;
                3'b110: data_outt = data_in << 6;
                3'b111: data_outt = data_in << 7;
                default: data_outt = data_in;
            endcase
            assign data_out=data_outt[6:0];
end

endmodule



