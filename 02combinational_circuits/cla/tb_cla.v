module tb_cla;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
cla uut(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout));
initial begin
$dumpfile("cla.vcd");
$dumpvars(0,tb_cla);
$monitor("Time=%0t | a=%b | b=%b | cin=%b | sum=%b | cout=%b",$time,a,b,cin,sum,cout);
a=4'b0001;b=4'b0101;cin=0;#10;
a=4'b0011;b=4'b0101;cin=0;#10;
a=4'b0010;b=4'b0101;cin=0;#10;
$finish;
end
endmodule
