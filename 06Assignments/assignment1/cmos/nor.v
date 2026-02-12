module nor_gate(
input a,b,
output y);
supply1 vdd;
supply0 gnd;
wire x;
pmos(x,vdd,a);
pmos(y,x,b);
nmos(y,gnd,a);
nmos(y,gnd,b);
endmodule

