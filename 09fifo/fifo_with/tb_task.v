module tb_fifo;
parameter width=8,depth=4;
reg clk,rst;
reg [width-1:0]din;
reg wr_en,rd_en;
wire [width-1:0]dout;
wire [$clog2(depth)-1:0]rd_ptr;
wire [$clog2(depth)-1:0]wr_ptr;


fifo #(.width(width), .depth(depth)) uut (
	.clk(clk),
	.rst(rst),
	.din(din),
	.wr_en(wr_en),
	.rd_en(rd_en),
	.dout(dout),
	.full(full),
	.empty(empty),
.wr_ptr(wr_ptr),
.rd_ptr(rd_ptr));
always #5 clk = ~clk;
initial begin



$monitor("Time=%0t|clk=%b|rst=%b|din=%b|wr_en=%b|rd_en=%b|dout=%b|full=%b|empty=%b|wr_ptr=%b|rd_ptr=%b",$time,clk,rst,din,wr_en,rd_en,dout,full,empty,wr_ptr,rd_ptr);

$dumpfile("fifo.vcd");
	$dumpvars(0,tb_fifo);

clk=0;
rst=0;
wr_en=0;
rd_en=0;
din=0;


rst=1;din=0;
#10;
repeat(2) @(posedge clk);

rst=0;
wr_en=1;
for(integer i=0;i<15;i=i+1)
begin
@(posedge clk);
din=$random;
end
#10;


wr_en=0;#10;
for(integer i=0;i<15;i=i+1)
begin
@(posedge clk)
rd_en=1;
wr_en=1;
end
#10;

#50 $finish;
end
endmodule





