module tb_and_gate;
reg a,b;
wire out;
and_gate uut(
.a(a),
.b(b),
.out(out)
);
initial begin 
$dumpfile("andgate.vcd");
$dumpvars(0,tb_and_gate);
$monitor("Time=%0t | a=%b | b= %b | out=%b", $time, a, b, out);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;


end
endmodule


