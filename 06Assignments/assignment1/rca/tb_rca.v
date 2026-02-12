module tb_rca;
reg [3:0]a,b;
wire [3:0]sum;
reg cin;
wire cout;
rca uut(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout));
initial begin
$dumpfile("rca.vcd");
$dumpvars(0,tb_rca);
$monitor("Time=%0t,a=%b,b=%b,sum=%b,cout=%b",$time,a,b,sum,cout);
a=4'b0010;b=4'b1010;cin=1'b0;
end
endmodule
