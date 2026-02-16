module tb_counter;
reg clk,rst,ctrl;
wire [3:0]count;
counter uut(
.clk(clk),
.rst(rst),
.ctrl(ctrl),
.count(count));
always #5 clk = ~clk;
initial begin
$dumpfile("counter.vcd");
$dumpvars(0,tb_counter);
$monitor("Time=%0t|clk=%b|rst=%b|ctrl=%b|count=%b",$time,clk,rst,ctrl,count);
clk=0;rst=1;ctrl=1;#10;
rst=0;ctrl=1;#160;
ctrl=0;#320;
$finish;
end
endmodule


