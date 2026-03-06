module tb;
parameter depth=8,width =4;
reg clk,rst_n,push,pop;
reg [width-1:0]din;
wire [width-1:0]dout;
wire full;
wire empty;

lifo #(.width(width),.depth(depth)) uut(
.clk(clk),
.rst_n(rst_n),
.push(push),
.pop(pop),
.din(din),
.dout(dout),
.full(full),
.empty(empty));
always #5 clk = ~clk;
initial begin
clk=0;rst_n=0;din=8'b0010;push=1;pop=0;#10;
rst_n=1;din=4'b1101;push=1;pop=0;#10;
din=4'b1101;push=1;pop=0;#10;
din=8'b1001;push=1;pop=0;#10;
din=4'b0011;push=1;pop=0;#10;
din=4'b1101;push=1;pop=0;#10;
din=8'b1001;push=1;pop=0;#10;
din=4'b0011;push=1;pop=0;#10;
din=4'b1010;push=1;pop=0;#10;
din=4'b1100;push=1;pop=0;#10;
din=4'b0010;push=0;pop=1;#10;
din=4'b1101;push=0;pop=1;#10;
din=4'b0101;push=0;pop=1;#10;
din=4'b0001;push=0;pop=1;#10;
din=4'b0010;push=0;pop=1;#10;
din=4'b1101;push=0;pop=1;#10;
din=4'b0101;push=0;pop=1;#10;
din=4'b0001;push=0;pop=1;#10;

$finish;
end
initial begin
	$dumpfile("lifo.vcd");
	$dumpvars(0,tb);
	$monitor("Time=%0t|clk=%b|rst_n=%b|din=%b|push=%b|pop=%b|dout=%b|full=%b|empty=%b",$time,clk,rst_n,din,push,pop,dout,full,empty);
	end

endmodule

