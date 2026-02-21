module tb_star;
parameter n =5;
reg [n-1:0]a;
wire [n-1:0]out;
star_pattern #(.n(n)) uut(
.a(a),
.out(out));

integer i,j;
initial begin
for(i=1;i<n;i=i+1)
begin
for(j=0;j<n;j=j+1)
begin
$write("*");
end
$display(" ");
end
end
endmodule

