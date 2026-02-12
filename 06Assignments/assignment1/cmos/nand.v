module nand_gate(
input a,b,
output y);
supply1 vdd;
supply0 gnd;
wire x;
pmos(y,vdd,a);
pmos(y,vdd,b);
nmos(x,gnd,b);
nmos(y,x,a);
endmodule
