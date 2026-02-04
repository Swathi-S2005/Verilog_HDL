module or_gate(
input a,b,
output y);
supply1 vdd;
supply0 gnd;
wire w,x;
pmos p1(w,vdd,a);
pmos p2(x,w,b);
pmos p3(y,vdd,x);
nmos n1(x,gnd,a);
nmos n2(x,gnd,b);
nmos m3(y,gnd,x);
endmodule
