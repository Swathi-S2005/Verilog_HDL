module tb;
 time t;
initial begin
#10 t=$time;
#20 t=t;
#30;
end
initial begin
$monitor("Time=%0t|t=%t",$time,t);
end
endmodule

