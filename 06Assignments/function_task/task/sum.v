module tb_sum;
reg [3:0]a,b;
reg [4:0]out;
task sum;
input [3:0]x,y;
output [4:0]sum;
begin
sum = x+y;
end
endtask

initial begin
$dumpfile("sum.vcd");
$dumpvars(0,tb_sum);
$monitor("Time=%0t|a=%b|b=%b|out=%b|",$time,a,b,out);
a=4'b0010;b=4'b1011;sum(a,b,out);#10;
a=4'b0011;b=4'b1010;sum(a,b,out);#10;
a=4'b0001;b=4'b0101;sum(a,b,out);#10;
$finish;
end
endmodule

