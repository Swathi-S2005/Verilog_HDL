module tb_gray;
reg [3:0]b;
wire [3:0]g;
graycode uut(
.b(b),
.g(g));
integer i;
initial begin
$dumpfile("code.vcd");
$dumpvars(0,tb_gray);
$monitor("Time=%0t|b=%b|g=%b",$time,b,g);
for(i=0;i<16;i=i+1)
begin
b=i;#10;
end
#100 $finish;
end
endmodule
