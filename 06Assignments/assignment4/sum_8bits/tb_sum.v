module tb_sum;
reg [7:0]a,b;
wire [8:0]out;
addition uut(
.a(a),
.b(b),
.out(out));
initial begin
$dumpfile("sum.vcd");
$dumpvars(0,tb_sum);
$monitor("Time=%0t|a=%8b|b=%8b|out=%9b",$time,a,b,out);
end
integer i,j;
initial begin
for(i=0;i<256;i=i+1)
begin
for(j=0;j<256;j=j+1)
begin
a=i;
b=j;
#10;

end
end
end
initial begin
#300;
$display("finished",$time);
$finish;

end
endmodule
