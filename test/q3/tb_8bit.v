module tb;
parameter n= 8;
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
a=8'b00100101;b=8'b10101010;cin=0;#10;
a=8'b00100100;b=8'b10111010;cin=0;#10;
a=8'b01100101;b=8'b10111010;cin=0;#10;
a=8'b00100100;b=8'b00101010;cin=0;#10;

$strobe("Time=%0t|a=%b|b=%b|c=%b|sum=%b|cout=%b",$time,a,b,cin,sum,cout);
end
endmodule
