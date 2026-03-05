module tb;
reg a,b,c,d,e;
wire y;
initial begin
a=1;b=0;c=0;d=1;e=1;#10;
a=0;b=0;c=0;d=1;e=1;#10;
a=1;b=1;c=0;d=1;e=1;#10;
a=1;b=0;c=1;d=1;e=1;#10;
a=1;b=0;c=0;d=0;e=1;#10;
a=1;b=0;c=0;d=1;e=0;#10;
a=1;b=0;c=0;d=1;e=1;#10;
a=1;b=0;c=0;d=1;e=1;#10;
a=1;b=0;c=0;d=1;e=1;#10;
a=1;b=0;c=0;d=1;e=1;#10
a=1;b=0;c=0;d=1;e=1;#10;
a=1;b=0;c=0;d=1;e=1;#10;
a=1;b=0;c=0;d=1;e=1;#10;
a=1;b=0;c=0;d=1;e=1;#10;
a=1;b=0;c=0;d=1;e=1;#10;
a=1;b=0;c=0;d=1;e=1;#10;
$monitor("Time=%ot|a=%b|b=%b|c=%b|d=%b|e=%d|y=%b",$time,a,b,c,d,e,y);
#50 $monitoroff;
#100 $monitoron;
end
endmodule

