module tb;
reg clk,rst,x;
wire y;
seq uut(
.clk(clk),
.rst(rst),
.x(x),
.y(y));
always #5 clk = ~clk;
initial begin
clk =0;rst=1; x=0;
#5 rst=0;
#10 x=1;
#10 x=1;
#10 x=1;
#10 x=0;
#10 x=1;
#10 x=1;
#10 x=1;
#10 x=0;
#10 x=0;#100;
$finish;
end
initial begin
$dumpfile("seq.vcd");
$dumpvars(0,tb);
$monitor("Time=%0t|clk=%b|rst=%b|x=%b|y=%b",$time,clk,rst,x,y);
end
endmodule
