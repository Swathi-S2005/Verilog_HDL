module tb_not;
reg a,en;
wire y;
notgate uut(
        .a(a),
        .en(en),
        .y(y));

initial begin
$dumpfile("notgate.vcd");
$dumpvars(0,tb_not);
$monitor("Time=%0t |a=%b|y=%b",$time,a,y);
en=1;a=1'b0;#10;
a=1'b0;#10;
a=1'b1;#10;
a=1'bx;#10;
a=1'bz;#10;

en=0;a=1'b0;#10;
a=1'b1;#10;
$finish;
end
endmodule
             
