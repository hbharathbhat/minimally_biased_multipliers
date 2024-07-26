module multiplexer (input_a, sel_line, out);
parameter K = 6;
parameter N = 16;
input [$clog2(N)-1:0] sel_line;
input [N-1:0] input_a;
output reg [K-3:0] out;
integer i;
always @(*) begin
    out = 0;
    for (i = K; i<N; i=i+1) 
    begin 
        if (sel_line == i[$clog2(N)-1:0])
        begin
            out = input_a[i-1 -: K-2];  
        end            
    end
end
endmodule