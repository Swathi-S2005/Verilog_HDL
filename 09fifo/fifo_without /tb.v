module tb_fifo;
parameter width=8,depth=4;
reg clk,rst;
reg [width-1:0]din;
reg wr_en,rd_en;
wire [width-1:0]dout;
wire [$clog2(depth):0]rd_ptr;
wire [$clog2(depth):0]wr_ptr;


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
	clk=0;rst=1;din=4'b1101;#10;
	rst=0;din=4'b1011;wr_en=1;rd_en=0;#10;
	rst=0;din=4'b1010;wr_en=1;rd_en=0;#10;
	rst=0;din=4'b0011;wr_en=1;rd_en=0;#10;
	rst=0;din=4'b1100;wr_en=1;rd_en=0;#10;
	rst=0;din=4'b1011;wr_en=1;rd_en=0;#10;
        rst=0;din=4'b1010;wr_en=1;rd_en=0;#10;
        rst=0;din=4'b0011;wr_en=1;rd_en=1;#10;
	rst=0;din=4'b1100;wr_en=1;rd_en=1;#10;
        rst=0;din=4'b1011;wr_en=1;rd_en=1;#10;
        rst=0;din=4'b1010;wr_en=1;rd_en=1;#10;
        rst=0;din=4'b0011;wr_en=1;rd_en=1;#10;
        rst=0;din=4'b1100;wr_en=1;rd_en=1;#10;
        rst=0;din=4'b1011;wr_en=1;rd_en=1;#10;
        rst=0;din=4'b1010;wr_en=1;rd_en=1;#10;
        rst=0;din=4'b0011;wr_en=1;rd_en=1;#10;
        rst=0;din=4'b1100;wr_en=1;rd_en=1;#10;

 $finish;
end

initial begin
	$dumpfile("fifo.vcd");
	$dumpvars(0,tb_fifo);
	$monitor("Time=%0t|clk=%b|rst=%b|din=%b|wr_en=%b|rd_en=%b|dout=%b|full=%b|empty=%b|wr_ptr=%b|rd_ptr=%b",$time,clk,rst,din,wr_en,rd_en,dout,full,empty,wr_ptr,rd_ptr);
end

endmodule



