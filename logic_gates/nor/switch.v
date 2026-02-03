module norgate(
input a,b,
output y);
supply1 vdd;
supply0 gnd;
wire x;
pmos p1(x,vdd,a);
pmos p2(y,x,b);
nmos n1(y,gnd,a);
nmos n2(y,gnd,b);
endmodule

