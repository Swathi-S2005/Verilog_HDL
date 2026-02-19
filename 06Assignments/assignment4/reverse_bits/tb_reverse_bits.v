module tb_reverse;
parameter n=5;
reg [n-1:0]a;
wire [n-1:0]out;
reverse_bits #(n) uut(
.a(a),
.out(out));
initial begin
$dumpfile("reverse.vcd");
$dumpvars(0,tb_reverse);
$monitor("a=%b|out=%b",a,out);
a=01100;#10;
a=01010;
end
endmodule

