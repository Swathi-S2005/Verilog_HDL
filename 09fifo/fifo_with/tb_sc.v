module tb_fifo;
parameter width=8,depth=4;
reg clk,rst;
reg [width-1:0]din;
reg wr_en,rd_en;
wire [width-1:0]dout;
wire [$clog2(depth)-1:0]rd_ptr;
wire [$clog2(depth)-1:0]wr_ptr;

reg [width-1:0] expected_mem [0:depth-1];
integer tb_wr_ptr=0;
integer tb_rd_ptr=0;
integer count=0;
integer i=0;

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

task reset();
begin
	clk=0;
	rst=1;
wr_en=0;rd_en=0;

#20 rst=0;
end

endtask



task write(input [width-1:0]data);
begin
@(posedge clk);
if(!full)
begin
wr_en=1;
din=data;

@(posedge clk)
expected_mem[tb_wr_ptr]=data;
tb_wr_ptr = (tb_wr_ptr+1)%depth;
count= count+1;
end

else
begin
$display("full");

end
@(posedge clk);
wr_en=0;
end
endtask


task read;
reg [width-1:0]expected;

begin
@(posedge clk)
if(!empty)
begin
rd_en=1;

@(posedge clk)

expected = expected_mem[tb_rd_ptr];
tb_rd_ptr = (tb_rd_ptr+1)%depth;
count = count-1;


if(dout != expected )
begin
$display(" fail time=%0t|data_out=%0b|expected=%0b",$time,dout,expected);
end
else
$display(" pass time=%0t|data_out=%0b|expected=%0b",$time,dout,expected);

end
else
$display("fifo is empty");
end
endtask
initial begin
reset();

for(i=1;i<=4;i=i+1)
	write(i*2);

for(i=1;i<=4;i=i+1)
	read();


for(i=1;i<depth;i=i+1)
	write(i+1);
write(10);
read();

#100 $finish;
end
initial begin
//$monitor("clk=%0b|rst=%0b",clk,rst);
$dumpfile("fifo.vcd");
$dumpvars(0,tb_fifo);
end



endmodule


