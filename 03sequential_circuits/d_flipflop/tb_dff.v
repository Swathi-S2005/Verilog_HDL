module tb_dff;
reg d,clk,rst;
wire q;
d_ff uut(
.d(d),
.clk(clk),
.rst(rst),
.q(q));
always #5 clk = ~clk;
initial begin
$dumpfile("flipflop.vcd");
$dumpvars(0,tb_dff);
$monitor("Time=%0t|clk=%b|rst=%b|d=%b|q=%b",$time,clk,rst,d,q);
clk=0;rst=1;d=1;#10;
clk=1;rst=1;d=1;#10;
clk=1;rst=0;d=1;#10;
clk=1;rst=0;d=0;#10;
clk=1;rst=1;d=1;#10;
clk=1;rst=0;d=0;#10;
$finish;
end
endmodule
