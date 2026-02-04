module and_gate(
input a,b,
output y);

supply1 vdd;
supply0 gnd;
wire o,w;
pmos p1(o,vdd,a);
pmos p2(o,vdd,b);
pmos p3(y,vdd,o);
nmos n1(w,gnd,a);
nmos n2(o,w,b);
nmos n3(y,gnd,o);
endmodule

