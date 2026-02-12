module tb_mag;
reg [1:0]a,b;
wire [2:0]out;
mag_cmp uut(
.a(a),
.b(b),
.out0(out0),
.out1(out1),
.out2(out2)
);
initial begin
$dumpfile("magcmp.vcd");
$dumpvars(0,tb_mag);
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

