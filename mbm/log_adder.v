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


module log_adder(input [7:0] a, b, output reg [15:0] result);
wire frac_cout;
wire lod_cout;
reg [8:0] frac_result;
reg frac_carry;
wire [6:0] frac_res;
reg [3:0] chara_res;
wire [2:0] char_res;
wire [2:0] lod1, lod2;
wire [7:0] fract1, fract2;
reg [7:0] correction_bit, correction_bit_shift;
reg cin1, cin2;

initial
begin
    assign cin1=1'b0;
    assign cin2=1'b0;
    assign correction_bit=8'b00001010;
    assign correction_bit_shift = correction_bit>>1;
end

log_calculator dut0(.in(a), .w1(lod1), .w2(fract1));
log_calculator dut1(.in(b), .w1(lod2), .w2(fract2));

adder dut3(.a(lod1), .b(lod2), .cin(cin1), .s(char_res), .cout(lod_cout));
adder_fract dut4(.a(fract1), .b(fract2), .cin(cin2), .s(frac_res), .cout(frac_cout));

always@(*)
if(frac_cout)
begin
    frac_result = correction_bit_shift + frac_res;
end
else 
begin
    frac_result = correction_bit + frac_res;
end

always@(*)
if(frac_result[7])
begin
    frac_result = {2'b10, frac_result [6:0]};
end
else
begin
    frac_result = {2'b01, frac_result [6:0]};
end

always@(*)
if(char_res[3])
begin
//    chara_res = char_res + 1'b1;
    result = frac_result<<(char_res - 3'b110);
end
else
begin
    result = frac_result<<(char_res - 3'b111);
end
       

endmodule
