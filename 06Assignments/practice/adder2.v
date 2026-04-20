//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );


module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

wire c1,mux,sum1,sum2;
add16 inst1( .a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(c1));
add16 inst2( .a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(sum1[31:16]), .cout(c2));
add16 inst3(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(sum2[31:16]), .cout(c3));

assign mux = (~c1 & sum1[31:16])|(c1 & sum2[31:16] );

assign sum ={sum[15:0],sum[31:16]};
endmodule


