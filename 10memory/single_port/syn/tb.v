module tb;
reg [7:0]data;
reg [5:0]addr;
reg wr_en;
reg  clk;
wire [7:0]q;

ram uut(
.data(data),
.addr(addr),
.wr_en(wr_en),
.clk(clk),
.q(q));
always #5 clk = ~clk;
initial begin
clk=0;data=8'b00100010;addr=6'b101010;wr_en=1;#10;
data=8'b00100010;addr=6'b101000;wr_en=1;#10;
data=8'b10100010;addr=6'b001010;wr_en=1;#10;
data=8'b01100010;addr=6'b101011;wr_en=1;#10;
data=8'b00101110;addr=6'b101011;wr_en=0;#10;
data=8'b00111110;addr=6'b001010;wr_en=0;#10;
data=8'b00000010;addr=6'b101011;wr_en=0;#10;
data=8'b10000010;addr=6'b101011;wr_en=1;#10;
data=8'b10000010;addr=6'b101011;wr_en=0;#10;

$finish;
end
initial begin
	$dumpfile("ram.vcd");
	$dumpvars(0,tb);
	$monitor("Time=%0t|clk=%b|data=%d|addr=%d|wr_en=%b|q=%d",$time,clk,data,addr,wr_en,q);
end
endmodule


