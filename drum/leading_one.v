module detect_1 (input_a, output_a);
parameter K = 6;
parameter N = 16;
input [N-1:0] input_a;
output reg [N-1:0] output_a;
integer k;
reg [N-1:0]w;
always @(*)
    begin
        output_a[N-1]=input_a[N-1];
        w[N-1]=input_a[N-1]?0:1;
        for (k=N-2;k>=0;k=k-1)
	    begin
	        w[k]=input_a[k]?0:w[k+1];
	        output_a[k]=w[k+1]&input_a[k];
	    end
	end
endmodule