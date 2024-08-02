`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2024 12:40:41
// Design Name: 
// Module Name: log_adder_testbench
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


module log_adder_testbench;
reg [7:0] a, b;
wire frac_cout, lod_cout, frac_carry;
wire [6:0] frac_result;


log_adder dut(a, b,frac_cout, lod_cout, frac_carry,frac_result);
initial
begin
    a=8'b01101010; b=8'b00010110;
    #10 $finish;
end




endmodule
