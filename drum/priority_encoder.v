module priorityencoder (input_a, output_a);
parameter K = 6;
parameter N = 16;
input [N-1:0] input_a;
output reg [$clog2(N)-1:0] output_a;
integer i;
    always @* 
    begin
        output_a = 0;
        for (i=N-1; i>=0; i=i-1)
        begin
           if (input_a[i]) 
           begin
              output_a = i[$clog2(N)-1:0]; 
           end 
        end
    end
endmodule