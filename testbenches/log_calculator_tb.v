`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2024 20:39:13
// Design Name: 
// Module Name: log_calculator_tb
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


module log_calculator_tb;
reg [7:0] in; 
wire [2:0] w1;
wire [7:0] w2;
log_calculator dut(in, w1, w2);

initial
begin
        in=8'b00000000;
    #5  in=8'b00000001;
    #5  in=8'b00000010;
    #5  in=8'b00000011;
    #5  in=8'b00000100;
    #5  in=8'b00000101;
    #5  in=8'b00000110;
    #5  in=8'b00000111;
    #5  in=8'b00001000;
    #5  in=8'b00001001;
    #5  in=8'b00001010;
    #5  in=8'b00001011;
    #5  in=8'b00001100;
    #5  in=8'b00001101;
    #5  in=8'b00001110;
    #5  in=8'b00001111;
    #5  in=8'b00010111;
    #5  in=8'b00011000;
    #5  in=8'b10110010;
    #5  in=8'b01011110;
    #5 $finish;

end

endmodule
