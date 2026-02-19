module tb_reverse;
parameter n=10;
reg [8*n-1:8]a;
wire [8*n-1:8]out;
reverse_string #(n) uut(
.a(a),
.out(out));
initial begin
$dumpfile("reverse.vcd");
$dumpvars(0,tb_reverse);
$monitor("a=%s|out=%s",a,out);
a="hello";#10;
a="krish";#10;
end
endmodule

