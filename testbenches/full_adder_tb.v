`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: JSS Academy of Technical Education, Bengaluru
// Engineer: H Bharath Bhat
// 
// Create Date: 21.07.2024 14:12:04
// Design Name: Full Adder
// Module Name: full_adder_tb
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


module full_adder_tb;
wire s, cout;
reg a, b, c;

full_adder dut(.a(a),.b(b),.cin(c),.s(s),.cout(cout));
//.port_name(signal)
initial
begin
        a=1'b0;b=1'b0;c=1'b0;
    #5  a=1'b0;b=1'b0;c=1'b1;
    #5  a=1'b0;b=1'b1;c=1'b0;
    #5  a=1'b0;b=1'b1;c=1'b1;
    #5  a=1'b1;b=1'b0;c=1'b0;
    #5  a=1'b1;b=1'b0;c=1'b1;
    #5  a=1'b1;b=1'b1;c=1'b0;
    #5  a=1'b1;b=1'b1;c=1'b1;
    #10 $finish;
end
endmodule
