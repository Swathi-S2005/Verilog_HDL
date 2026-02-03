module xorgate(
input a,b,
output y);
supply1 vdd;
supply0 gnd;
wire c,d,x,w,z;
not g1(c,a);
not g2(d,b);
pmos p1(x,vdd,c);
pmos p2(x,vdd,d);
pmos p3(y,x,a);
pmos p4(y,x,b);
nmos n1(w,gnd,d);
nmos n2(z,gnd,b);
nmos n3(y,w,c);
nmos n4(y,z,a);
endmodule
