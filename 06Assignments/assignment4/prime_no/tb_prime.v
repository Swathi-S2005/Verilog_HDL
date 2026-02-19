module tb_prime;
parameter n=5;
reg [n-1:0]a;
wire out;
prime_no #(n) uut(
.a(a),
.out(out));
integer i;
initial begin
$dumpfile("prime.vcd");
$dumpvars(0,tb_prime);
$monitor("Time=%0t|a=%d|out=%d",$time,a,out);
for(i=0;i<50;i=i+1)
begin
a=$urandom_range(30,2);
#10;
end
#100 $finish;
end
endmodule
