module fullsub(
input a,b,c,
output diff,borrow);
wire e,f,g,h,i;
xor(e,a,b);
xor(diff,e,c);
not(f,a);
and(g,f,b);
not(h,e);
and(i,c,h);
or(borrow,i,g);
endmodule


