module tb_counter;
reg clk,rst;
wire [3:0]count;
counter uut(
.clk(clk),
.rst(rst),
.count(count));
always #5 clk = ~clk;
initial begin
$monitor("Time=%0t|clk=%b|rst=%b|count=%b",$time,clk,rst,count);
$dumpfile("counter.vcd");
$dumpvars(0,tb_counter);
clk=0;rst=1;#10;
rst=0;#700;

$finish;
end
endmodule

