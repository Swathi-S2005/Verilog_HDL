module tb_ff;
reg s,r,clk,rst;
wire q;
sr_ff uut(
.s(s),
.r(r),
.clk(clk),
.rst(rst),
.q(q));
always #5 clk = ~clk;
initial begin
$dumpfile("flipflop.vcd");
$dumpvars(0,tb_ff);
$monitor("Time=%0t|clk=%b|rst=%b|s=%b|r=%b|q=%b",$time,clk,rst,s,r,q);
clk=0;rst=1;s=0;r=0;#10;
clk=1;rst=0;s=0;r=0;#10;
clk=1;rst=0;s=1;r=0;;#10;
clk=1;rst=0;s=0;r=1;#10;
clk=1;rst=0;s=1;r=1;#10;
$finish;
end
endmodule
