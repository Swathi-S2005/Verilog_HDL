module tb_counter;
reg clk,rst,ori;
wire [3:0]q;
counter uut(
.clk(clk),
.rst(rst),
.ori(ori),
.q(q));
always #5 clk = ~clk;
initial begin
$monitor("Time=%1t|clk=%b|rst=%b|ori=%b|q=%b",$time,clk,rst,ori,q);
$dumpfile("counter.vcd");
$dumpvars(0,tb_counter);
clk=0;rst=1;#10;
ori=1;rst=0;#10;
ori=1;#10;
ori=0;#50;

$finish;
end
endmodule
