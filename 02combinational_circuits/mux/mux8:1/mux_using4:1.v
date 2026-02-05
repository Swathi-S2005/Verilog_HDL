module mux4_1(
input a,b,c,d,s0,s1, 
output reg y);
always @(*)
begin
case({s1,s0})
2'b00:y=a;
2'b01:y=b;
2'b10:y=c;
2'b11:y=d;
default:y=1'b0;
endcase
end 
endmodule

module mux2_1(
input a,b,s,
output y);
assign y = s?b:a;
endmodule


module mux(
input [7:0]i,
input [2:0]s,
output  y);
wire y0,y1;
mux4_1 m1(
.a(i[0]),
.b(i[1]),
.c(i[2]),
.d(i[3]),
.s0(s[0]),
.s1(s[1]),
.y(y0));

mux4_1 m2(
.a(i[4]),
.b(i[5]),
.c(i[6]),
.d(i[7]),
.s0(s[0]),
.s1(s[1]),
.y(y1));
mux2_1 m3(
.a(y0),
.b(y1),
.s(s[2]), 
.y(y));
endmodule















