module tb_nandgate;
reg a,b;
wire y;
nandgate uut(
.a(a),
.b(b),
.y(y)
);
initial begin 
$dumpfile("nandgate.vcd");
$dumpvars(0,tb_nandgate);
$monitor("Time=%0t | a=%b | b= %b | c=%b", $time, a, b, y);

a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule


