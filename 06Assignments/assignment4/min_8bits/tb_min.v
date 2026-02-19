module tb_min;
reg [7:0]a,b;
wire [7:0]out;
minimum uut(
.a(a),
.b(b),
.out(out));
integer i,j;
initial begin
$dumpfile("min.vcd");
$dumpvars(0,tb_min);
$monitor("a=%b|b=%b|out=%b",a,b,out);
for(i=0;i<16;i=i+1)
begin
a=$urandom_range(256,0);
b=$urandom_range(256,0);
#10;
end
end
endmodule

