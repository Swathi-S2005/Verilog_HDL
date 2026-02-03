module halfadd(
input a,b,
output sum,carry);
assign sum = a^b;
assign carry = a&b;
endmodule

module fulladd(
input a,b,c,
output sum,carry);
wire s1,c1,c2;
halfadd ha1(
.a(a),
.b(b),
.sum(s1),
.carry(c1)
);
halfadd ha2(
.a(s1),
.b(c),
.sum(sum),
.carry(c2));
assign carry = c1|c2;
endmodule

