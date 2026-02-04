module tb_switch;
reg a,b;
wire y;
and_gate uut(
.a(a),
.b(b),
.y(y)
);
initial begin
$dumpfile("switch.vcd");
$dumpvars(0,tb_switch);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule

