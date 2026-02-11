module tb_mag_cmp;
reg [1:0]a,b;
wire c,d,e;
mag_cmp uut(
.a(a),
.b(b),
.c(c),
.d(d),
.e(e)
);
initial begin
$dumpfile("mag_cmp_2bit.vcd");
$dumpvars(0,tb_mag_cmp);
a=2'b00;b=2'b00;#10;
a=2'b00;b=2'b01;#10;
a=2'b00;b=2'b10;#10;
a=2'b00;b=2'b11;#10;
a=2'b01;b=2'b00;#10;
a=2'b01;b=2'b01;#10;
a=2'b01;b=2'b10;#10;
a=2'b01;b=2'b11;#10;
a=2'b10;b=2'b00;#00;
a=2'b10;b=2'b01;#10;
a=2'b10;b=2'b10;#10;
a=2'b10;b=2'b11;#10;
a=2'b11;b=2'b00;#10;
a=2'b11;b=2'b01;#10;
a=2'b11;b=2'b10;#10;
a=2'b11;b=2'b11;#10;
$finish;
end
endmodule

