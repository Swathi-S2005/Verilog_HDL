module full_adder(
input a,b,cin,
output sum,cout);
wire p,g0,g1;
xor(p,a,b);
xor(sum,cin,p);
and(g0,a,b);
and(g1,p,cin);
or(cout,g0,g1);
endmodule

module rca(
input [3:0]a,b,
input cin,
output [3:0]sum,
output cout);
wire c1,c2,c3;
full_adder fa0(a[0],b[0],cin,sum[0],c1);
full_adder fa1(a[1],b[1],c1,sum[1],c2);
full_adder fa2(a[2],b[2],c2,sum[2],c3);
full_adder fa3(a[3],b[3],c3,sum[3],cout);
assign carry = cout;
endmodule

module alu(
input [3:0]a,b,
input [1:0]sel,
output [3:0]out);

wire [3:0]and_gate;
wire [3:0]or_gate;
wire [3:0]xor_gate;
wire [3:0]sum;
wire cout,cin;
and a0(and_gate[0],a[0],b[0]);
and a1(and_gate[1],a[1],b[1]);
and a2(and_gate[2],a[2],b[2]);
and a3(and_gate[3],a[3],b[3]);

or o0(or_gate[0],a[0],b[0]);
or o1(or_gate[1],a[1],b[1]);
or o2(or_gate[2],a[2],b[2]);
or o3(or_gate[3],a[3],b[3]);

xor x0(xor_gate[0],a[0],b[0]);
xor x1(xor_gate[1],a[1],b[1]);
xor x2(xor_gate[2],a[2],b[2]);
xor x3(xor_gate[3],a[3],b[3]);

rca ra1(
.a(a),
.b(b),
.cin(1'b0),
.sum(sum),
.cout(cout));


assign out = (sel==2'b00)?and_gate:
             (sel==2'b01)?or_gate:
             (sel==2'b10)?xor_gate:
             (sel==2'b11)?sum:
             4'b0000;

endmodule

