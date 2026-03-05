module gates(
input a,b,c,d,e,
output y);
wire f,g,h,i,j,k,l,m,n,o,p;
not #(4) n1(f,b);
not #(4) n2(g,c);
not #(4) n3(h,d);
and #(3) a1(i,a,f);
and #(3) a2(j,i,g);
and #(3) a3(k,a,b);
and #(3) a4(l,k,e);
and #(3) a5(m,f,c);
and #(3) a6(n,c,h);
or #(2) o1(o,m,n);
or #(2) o2(p,o,l);
or #(2) o3(y,p,j);
endmodule
