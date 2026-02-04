module tb_and_gate;
reg a,b;
wire c;
and_gate uut(
.a(a),
.b(b),
.c(c)
);
initial begin 
$dumpfile("andgate.vcd");
$dumpvars(0,tb_and_gate);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;


$monitor("Time=%0t | a=%b | b= %b | c=%b", $time, a, b, c);
end
endmodule


