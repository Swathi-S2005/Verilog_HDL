module tb_compare;
reg [3:0]a,b;
wire greater,lesser,equal;
comparator uut(
.a(a),
.b(b),
.greater(greater),
.lesser(lesser),
.equal(equal));
integer i,j;
initial begin
$dumpfile("cmp.vcd");
$dumpvars(0,tb_compare);
$monitor("Time=%0t|a=%b|b=%b|greater=%b|lesser=%b|equal=%b",$time,a,b,greater,lesser,equal);

for(i=0;i<4;i=i+1)
begin
for(j=0;j<4;j=j+1)
begin
a=i;
b=j;
#10;
end
end
end
endmodule

