module tb_reverse;
parameter n=8;
reg [n-1:0]a;
wire [n-1:0]out;
reverse_num #(.n(n)) uut(
.a(a),
.out(out));
initial begin
$dumpfile("reverse.vcd");
$dumpvars(0,tb_reverse);
$monitor("Time=%0t|a=%d|out=%d",$time,a,out);
a=17;#10;
a=31;#10;
a=16;
$finish;
end
endmodule

