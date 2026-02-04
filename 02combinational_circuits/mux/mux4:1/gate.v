module mux(
input a,b,c,d,s0,s1,
output y);
wire e,f,g,h,i,j;
not g1(e,s0);
not g2(f,s1);
and g3(g,e,b,a);
and g4(h,e,s1,b);
and g5(i,s0,f,c);
and g6(j,s0,s1,d);
or g7(y,g,h,i,j);
endmodule
