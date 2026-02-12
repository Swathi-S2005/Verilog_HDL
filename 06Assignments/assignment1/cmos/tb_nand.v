module tb_gate;
reg a,b;
wire y;
nand_gate uut(
.a(a),
.b(b),
.y(y));
initial begin
$dumpfile("nand.vcd");
$dumpvars(0,tb_nand);
$monitor("Time=%0t,a=%b,b=%b,y=%b",$time,a,b,y);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
end

endmodule

