module halfsub(
input a,b,
output diff,borrow);
assign diff = a^b;
assign borrow = ~a&b;
endmodule


module fullsub(
input a,b,c,
output diff,borrow);
wire s1,c1,c2;
halfsub ha1(
.a(a),
.b(b),
.diff(s1),
.borrow(c1));
halfsub ha2(
.a(s1),
.b(c),
.diff(diff),
.borrow(c2)
);
assign borrow = c1|c2;
endmodule
