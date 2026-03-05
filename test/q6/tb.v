module tb;
reg [7:0]a;
wire [2:0]y;
encoder uut(
.a(a),
.y(y));
initial begin
a=00100010;#10;
a=10101010;#10;
a=00101010;#10;
$monitor("Time=%0t|a=%b|y=%b",$time,a,y);
end
endmodule

