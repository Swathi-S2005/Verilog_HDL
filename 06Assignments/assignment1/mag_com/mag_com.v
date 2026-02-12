module mag_cmp(
input [1:0]a,
input [1:0]b,
output out0,out1,out2);
wire j,k,c,d,w,x,y,z,e,f,g,h,i;
not(w,a[1]);
not(x,a[0]);
not(y,b[1]);
not(z,b[0]);
and(j,a[1],y);
and(k,y,z,a[0]);
and(c,z,a[1],a[0]);
or(out0,j,k,c);
and(d,w,x,b[0]);
and(e,b[1],w);
and(l,x,b[1],b[0]);
or(out1,d,e,l);
and(f,w,x,y,z);
and(g,w,a[0],y,b[0]);
and(h,a[1],a[0],b[1],b[0]);
and(i,a[1],x,b[1],z);
or(out2,f,g,h,i);
endmodule

