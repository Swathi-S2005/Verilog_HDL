module mux(
input a,b,s,
output y);
wire c,d,s1;
not g1(s1,s);
and g2(c,s1,a);
and g3(d,s,b);
or g4(y,c,d);
endmodule

