module barrelshifter (input_a, count, output_a);
parameter K = 6;
parameter N = 16;
parameter M = 16;
input [$clog2(M):0] count;
input [(K*2)-1:0] input_a;
output [(N+M)-1:0] output_a;
wire [(N + M)-1:0] tmp;
assign tmp = {{((N + M)-(K*2)){1'b0}}, input_a};
assign output_a=(tmp<<count);
endmodule