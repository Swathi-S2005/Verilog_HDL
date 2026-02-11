module tb_array_mul;
reg [3:0]a,b;
wire z[7:0];
array_mul_4 uut(
.a(a),
.b(b),
.z(z)
);
initial begin
$dumpfile("array_mul.vcd");
$dumpvars(0,tb_array_mul);
a=7;b=8;#10;
a=8;b=6;#10;
a=4;b=3;#10;
$finish;
end
endmodule


