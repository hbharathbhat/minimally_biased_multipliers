module tb_drum;
parameter n=16;
parameter m=16;
parameter k=9;
wire [(n+m)-1:0] r;
reg [n-1:0] a;
reg [m-1:0] b;

drum #(k,n,m) m1 (a,b,r);

initial begin
a = 16'd3000;
b = 16'd125;
#250 
$display("%d",r);
$finish;    
end

initial begin
$dumpfile("dump.vcd"); 
$dumpvars;
end

endmodule