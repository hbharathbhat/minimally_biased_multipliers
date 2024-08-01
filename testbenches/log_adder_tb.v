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
wire [2:0] char_res;
wire [6:0] fract_res;
wire frac_cout, lod_cout;

log_adder dut(a, b, frac_cout, lod_cout, char_res, fract_res);

initial
begin
        a=8'b01101010;b=8'b00010110;
    #10 $finish;




end
endmodule
