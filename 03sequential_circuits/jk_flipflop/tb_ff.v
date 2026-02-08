module tb_dff;
reg j,k,clk,rst;
wire q;
jk_ff uut(
.j(j),
.k(k),
.clk(clk),
.rst(rst),
.q(q));
always #5 clk = ~clk;
initial begin
$dumpfile("flipflop.vcd");
$dumpvars(0,tb_dff);
$monitor("Time=%0t|clk=%b|rst=%b|j=%b|k=%b|q=%b",$time,clk,rst,j,k,q);
clk=0;rst=1;j=0;k=0;#10;
clk=1;rst=0;j=0;k=0;#10;
clk=1;rst=0;j=1;k=0;;#10;
clk=1;rst=0;j=0;k=1;#10;
clk=1;rst=0;j=1;k=1;#10;
$finish;
end
endmodule
