`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2024 06:43:08
// Design Name: 
// Module Name: log_adder
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

module log_adder_tb;
reg [7:0] a,b;
wire [15:0] result;
//wire [2:0] char_res;
//wire [8:0] fract_res;
//wire frac_cout, lod_cout;

//log_adder dut(a, b, frac_cout, lod_cout, fract_res);
log_adder dut0(a, b, result);
initial
begin
            a=8'b01101010;b=8'b00010110;
    #10     a=8'b00101011;b=8'b00010111;
    #10 $finish;




end
endmodule
