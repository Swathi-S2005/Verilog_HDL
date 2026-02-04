module tb_mux;
reg a,b,s;
wire y;
mux uut(
.a(a),
.b(b),
.s(s),
.y(y)
);
initial begin 
$dumpfile("mux.vcd");
$dumpvars(0,tb_mux);
$monitor("Time=%0t | s=%b | a=%b | b= %b | y=%b", $time,s, a, b, y);
s=0;a=0;b=0;#10;
s=0;a=0;b=1;#10;
s=0;a=1;b=0;#10;
s=0;a=1;b=1;#10;
s=1;a=0;b=0;#10;
s=1;a=0;b=1;#10;
s=1;a=1;b=0;#10;
s=1;a=1;b=1;#10;
$finish;
end
endmodule


