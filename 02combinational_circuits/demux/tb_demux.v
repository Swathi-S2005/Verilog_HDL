module tb_demux;
reg a,s;
wire y0,y1;
demux uut(
.a(a),
.s(s),
.y0(y0),
.y1(y1));
initial begin
$dumpfile("demux.vcd");
$dumpvars(0,tb_demux);
$monitor("Time=%0t|a=%b|s=%b|y0=%b|y1=%b", $time,a,s,y0,y1);
a=0;s=0;#10;
a=0;s=1;#10;
a=1;s=0;#10;
a=1;s=1;#10;
$finish;
end
endmodule

