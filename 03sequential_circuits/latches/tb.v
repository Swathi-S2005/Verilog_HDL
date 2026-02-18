module tb_ff;
reg s,r,clk;
wire q,qbar;
sr_ff uut(
.s(s),
.r(r),
.clk(clk),
.q(q),
.qbar(qbar));
always #5 clk = ~clk;
initial bein
$dumpfile("latch.vcd");
$dumpvars(0,tb_ff);
$monitor("Time=%0t|clk=%b|s=%b|r=%b|q=%b|qbar=%d",$time,clk,s,r,q,qbar);
clk=0;s=0;r=0;#10;
clk=0;s=0;r=0;#10;
clk=0;s=1;r=0;#10;
clk=0;s=0;r=1;#10;
clk=0;s=1;r=1;#10;
$finish;
end
endmodule
