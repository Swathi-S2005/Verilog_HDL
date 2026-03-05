module tb;
integer in;

integer i;
initial begin
for(i=0;i<128;i=i+1)
begin
in= ($random%51)-50;
#10;
end
$finish;
end
initial begin
$monitor("Time=%0t|in=%d",$time,in);
end
endmodule
