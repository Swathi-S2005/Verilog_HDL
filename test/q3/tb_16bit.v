module tb;
parameter n= 16;
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
a=16'b000100010110100;b=16'b101110101101010;cin=0;#10;
a=16'b010100010110100;b=16'b100000101101010;cin=0;#10;
a=16'b010100010110100;b=16'b101100101101010;cin=0;#10;

$monitor("Time=%0t|a=%b|b=%b|c=%b|sum=%b|cout=%b",$time,a,b,cin,sum,cout);
end
endmodule
