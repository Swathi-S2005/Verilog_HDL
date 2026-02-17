module tb_odd;
reg a,b,c,d;
wire out;
odd_parity uut(
.a(a),
.b(b),
.c(c),
.d(d),
.out(out));
integer i;
initial begin
$dumpfile("odd.vcd");
$dumpvars(0,tb_odd);
$monitor("Time=%0t|a=%b|b=%b|c=%b|d=%d|out=%b",$time,a,b,c,d,out);
for(i=0;i<16;i=i+1)
begin
{a,b,c,d}=i;
#10;
end
end
endmodule
