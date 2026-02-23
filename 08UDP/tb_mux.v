module tb_mux;
reg a,b,c,d,s0,s1;
wire y;
mux uut(
.a(a),
.b(b),
.c(c),
.d(d),
.s0(s0),
.s1(s1),
.out(out));
initial begin 
$dumpfile("muc.vcd");
$dumpvars(0, tb_mux);
$monitor("Time=%0t | s0=%b | s1=%b | a=%b | b=%b | c=%b | d=%b | out=%b", $time,s0,s1,a,b,c,d,out);

a=0;b=1;c=0;d=1;
s0=0;s1=0;#10;
s0=0;s1=1;#10;
s0=1;s1=0;#10;
s0=1;s1=1;#10;
$finish;
end
endmodule
