module tb_sum;
reg [3:0]a,b;
wire [4:0]out;
add uut(
.a(a),
.b(b),
.out(out));
initial begin
$dumpfile("sum.vcd");
$dumpvars(0,tb_sum);
$monitor("Time=%0t|a=%b|b=%b|out=%b|",$time,a,b,out);
a=4'b0010;b=4'b1011;#10;
a=4'b0011;b=4'b1010;#10;
a=4'b0001;b=4'b0101;#10;
$finish;
end
endmodule

