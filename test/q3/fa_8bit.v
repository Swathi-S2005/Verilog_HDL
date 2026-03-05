module full_adder(
input a,b,cin,
output sum,carry);
assign sum = a^b^cin;
assign carry = (a&b)|(b&cin)|(cin&a);
endmodule

module rca #(parameter n=8)(
input [n-1:0]a,b,
output [n-1:0]sum,
output  cout);
wire [7:0]c;
full_adder fa0(
.a(a[0]),
.b(b[0]),
.cin(1'b0),
.sum(sum[0]),
.carry(c[0]));
genvar i;
generate
for(i=1;i<n;i=i+1)
begin
full_adder fa1(
.a(a[i]),
.b(b[i]),
.cin(c[i-1]),
.sum(sum[i]),
.carry(c[i]));
end

endgenerate
assign cout = c[7];
endmodule




