module tb_square;
reg [7:0]a;
wire [16:0]out;
square_no uut(
.a(a),
.b(b),
.out(out));
initial begin
$dumpfile("square.vcd");
$dumpvars(0,tb_square);
$monitor("Time=%0t|a=%d|out=%d",$time,a,out);
a=4'd10;#10;
a=4'd2;#10;
end
endmodule

