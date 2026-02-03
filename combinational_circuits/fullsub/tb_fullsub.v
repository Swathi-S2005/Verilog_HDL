module tb_fullsub;
reg a,b,c;
wire diff,borrow;
fullsub uut(
.a(a),
.b(b),
.c(c),
.diff(diff),
.borrow(borrow)
);
initial begin 
$dumpfile("fullsub.vcd");
$dumpvars(0,tb_fullsub);
$monitor("Time=%0t| a=%b|b=%b|c=%b|diff=%b|borrow=%b",$time,a,b,c,diff,borrow);
a=0;b=0;c=0;#10;
a=0;b=0;c=1;#10;
a=0;b=1;c=0;#10;
a=0;b=1;c=1;#10;
a=1;b=0;c=0;#10;
a=1;b=0;c=1;#10;
a=1;b=1;c=0;#10;
a=1;b=1;c=1;#10;
$finish;
end
endmodule
