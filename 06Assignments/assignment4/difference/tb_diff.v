module tb_diff;
reg [7:0]a,b;
wire [7:0]out;
diff uut(
.a(a),
.b(b),
.out(out));
initial begin
$dumpfile("diff.vcd");
$dumpvars(0,tb_diff);
$monitor("Time=%0t|a=%8b|b=%8b|out=%8b",$time,a,b,out);
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
