module tb;
reg clk,rst,a;
wire out;
seq uut(
.clk(clk),
.rst(rst),
.a(a),
.out(out));
always #5 clk = ~clk;
initial begin
clk =0;rst=1;a=0;#10;
clk=0;rst =1;#10;
clk=1; rst=0;#10;
a=1;#10;
a=1;#10;
a=0;#10;
a=1;#10;
a=1;#10;
a=0;#10;
a=1;#10;
a=1;#10;
a=0;#100;
$finish;
end
initial begin
$dumpfile("seq.vcd");
$dumpvars(0,tb);
$monitor("Time=%0t|clk=%b|rst=%b|a=%b|out=%b",$time,clk,rst,a,out);
end
endmodule
