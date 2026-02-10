module tb_ff;
reg t,clk,rst;
wire q;
t_ff uut(
.t(t),
.clk(clk),
.rst(rst),
.q(q));
always #5 clk = ~clk;
initial begin
$dumpfile("flipflop.vcd");
$dumpvars(0,tb_ff);
$monitor("Time=%0t|clk=%b|rst=%b|t=%b|q=%b",$time,clk,rst,t,q);
clk=0;rst=1;t=1;#10;
clk=1;rst=1;t=1;#10;
clk=1;rst=0;t=1;#10;
clk=1;rst=0;t=0;#10;
clk=1;rst=1;t=1;#10;
clk=1;rst=0;t=0;#10;
$finish;
end
endmodule
