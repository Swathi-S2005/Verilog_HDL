module tb;
parameter n= 4;
reg [n-1:0]a,b;
reg cin;
wire [n-1:0]sum;
wire carry;
rca uut(
.a(a),
.b(b),
.sum(sum),
.cout(cout));
initial begin 
a=4'b0010;b=4'b1010;cin=0;#10;
$monitor("Time=%0t|a=%b|b=%b|c=%b|sum=%b|cout=%b",$time,a,b,cin,sum,cout);
end
endmodule
