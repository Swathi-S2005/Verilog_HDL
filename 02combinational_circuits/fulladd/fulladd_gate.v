module fulladd(
input a,b,c,
output sum,carry);
wire d,e,f;
xor(d,a,b);
xor(sum,d,c);
and(e,a,b);
and(f,d,c);
or(carry,e,f);
endmodule

