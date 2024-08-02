`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2024 10:11:03
// Design Name: 
// Module Name: barrel_shifter_tb
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


module barrel_shifter_tb;
    reg [7:0] data_in;   // 8-bit input data
    reg [2:0] shift;     // 3-bit shift amount (0 to 7)
    wire [6:0] data_out;
    
    barrel_shifter bs1(data_in, shift, data_out);
    
    initial
    begin
            data_in=8'b01101010;  shift=3'b010;
        #5  data_in=8'b10111011;  shift=3'b011;
        #100 $finish;
    
    
    end
    
endmodule
