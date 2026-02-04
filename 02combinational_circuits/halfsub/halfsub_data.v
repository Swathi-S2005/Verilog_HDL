module halfsub(
input a,b,
output diff,borrow);
wire c;
xor(diff,a,b);
not(c,a);
and(borrow,c,b);
endmodule

