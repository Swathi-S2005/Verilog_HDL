module tb_fifo;
parameter width=8,depth=8;
reg wclk,wrst_n;
reg rclk,rst_n;
reg [width-1:0]data_in;
reg w_en,r_en;
wire [width-1:0]data_out;
wire full,empty;


top #(.width(width), .depth(depth)) uut (
	.wclk(wclk),
        .rclk(rclk),
	.wrst_n(wrst_n),
        .rst_n(rst_n),
	.data_in(data_in),
	.w_en(w_en),
	.r_en(r_en),
	.data_out(data_out),
	.full(full),
	.empty(empty));
always #5 wclk = ~wclk;
always #10 rclk = ~rclk;

initial begin
	wclk=0;rclk=0;wrst_n=0;rst_n=0;data_in=4'b1101;#10;
	wrst_n=1;rst_n=1;data_in=4'b1011;w_en=1;r_en=0;#10;
	wrst_n=1;rst_n=1;data_in=4'b1010;w_en=1;r_en=0;#10;
	wrst_n=1;rst_n=1;data_in=4'b0011;w_en=1;r_en=0;#10;
	wrst_n=1;rst_n=1;data_in=4'b1100;w_en=1;r_en=0;#10;
	wrst_n=1;rst_n=1;data_in=4'b1011;w_en=1;r_en=0;#10;
        wrst_n=1;rst_n=1;data_in=4'b1010;w_en=1;r_en=0;#10;
        wrst_n=1;rst_n=1;data_in=4'b0011;w_en=1;r_en=1;#10;
	wrst_n=1;rst_n=1;data_in=4'b1100;w_en=1;r_en=1;#10;
        wrst_n=1;rst_n=1;data_in=4'b1011;w_en=1;r_en=1;#10;
        wrst_n=1;rst_n=1;data_in=4'b1010;w_en=1;r_en=1;#10;
        wrst_n=1;rst_n=1;data_in=4'b0011;w_en=1;r_en=1;#10;
        wrst_n=1;rst_n=1;data_in=4'b1100;w_en=1;r_en=1;#10;
        wrst_n=1;rst_n=1;data_in=4'b1011;w_en=1;r_en=1;#10;
        wrst_n=1;rst_n=1;data_in=4'b1010;w_en=1;r_en=1;#10;
        wrst_n=1;rst_n=1;data_in=4'b0011;w_en=1;r_en=1;#10;
        wrst_n=1;rst_n=1;data_in=4'b1100;w_en=1;r_en=1;#10;

 $finish;
end

initial begin
	$dumpfile("fifo.vcd");
	$dumpvars(0,tb_fifo);
	$monitor("Time=%0t|wclk=%b|wrst_n=%b|rclk=%b|rst_n=%b|data_in=%b|w_en=%b|r_en=%b|data_out=%b|full=%b|empty=%b",$time,wclk,wrst_n,rclk,rst_n,data_in,w_en,r_en,data_out,full,empty);
end

endmodule



