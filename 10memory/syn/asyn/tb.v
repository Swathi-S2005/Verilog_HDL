module tb;
parameter width=8,depth=64,address=6;
reg [width-1:0]data;
reg [address-1:0]addr;
reg wr_en;
reg  clk;
wire [width-1:0]q;

ram #( .width(width),
	.depth(depth),
	.address(address))uut (
.data(data),
.addr(addr),
.wr_en(wr_en),
.clk(clk),
.q(q));
always #5 clk = ~clk;
integer i;
reg [width-1:0] golden[depth-1:0];

initial begin
clk=0;
wr_en=0;
data=0;
addr=0;

for(i=0;i<64;i=i+1)
begin
	wr_en=1;
	addr=i;
	data= i+5;
	golden[i] = i+5;
	#10;
end

for(i=0;i<64;i=i+1)
begin
	wr_en=0;
	addr=i;
	#10;

#100 $finish;
end
if(q==golden[i])
	$display("**Ram is working**|Time=%0t|clk=%b|wr_en=%d|data=%d|addr=%d|q=%d",$time,clk,wr_en,data,addr,q);
else
	$display("Ram is not working|Time=%0t|clk=%b|wr_en=%d|data=%d|addr=%d|q=%d",$time,clk,wr_en,data,addr,q);



end
initial begin
	$dumpfile("ram.vcd");
	$dumpvars(0,tb);
	$monitor("Time=%0t|clk=%b|data=%d|addr=%d|wr_en=%b|q=%d",$time,clk,data,addr,wr_en,q);
end
endmodule


