`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2024 19:09:17
// Design Name: 
// Module Name: log_calculator
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


module log_calculator(input [7:0] in, output [2:0] w1, [6:0] w2);
//wire [2:0] w1, w2;
wire [2:0] result, size;
reg [7:0] temp;
integer i;

lod dut1(in, w1);
assign size=3'd7;
always@(*)
begin
    temp=in;
    for(i=7;i<=w1;i=i+1)
    begin
        temp[i]=0;
    end
end
assign result=size-w1;
barrel_shifter dut2(temp, result, w2); 


endmodule
