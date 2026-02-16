module tb_square;
reg [7:0]a,b;
wire [16:0]out;
square_no uut(
.a(a),
.b(b),
.out(out));
initial begin
$dumpfile("square.vcd");
$dumpvars(0,tb_square);
$monitor("Time=%0t|a=%d|b=%d|out=%d",$time,a,b,out);
a=4'd10;b=4'd3;#10;
a=4'd2;b=4'd10;#10;
end
endmodule

