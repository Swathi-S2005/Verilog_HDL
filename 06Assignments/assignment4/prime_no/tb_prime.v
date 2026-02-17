module tb_prime;
parameter n=5;
reg [n-1:0];
wire out;
prime_no #(n) uut(
.a(a),
.out(out));
integer i;
initial begin
$dumpfile("odd.vcd");
$dumpvars(0,tb_odd);
$monitor("Time=%0t|a=%d|out=%d",$time,a,out);
a=10;#10;
a=11;
endmodule
