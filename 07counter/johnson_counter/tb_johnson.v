module tb_counter;
reg clk,rst;
wire [3:0]q;
counter uut(
.clk(clk),
.rst(rst),
.q(q));
always #5 clk = ~clk;
initial begin
$monitor("Time=%0t|clk=%b|rst=%b|q=%b",$time,clk,rst,q);
$dumpfile("counter.vcd");
$dumpvars(0,tb_counter);
clk=0;rst=1;#10;
rst=0;#100;
$finish;
end
endmodule
