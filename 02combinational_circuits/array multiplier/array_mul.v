module half_add(
input a,b,
output sum,carry);
assign sum = a^b;
assign carry = a&b;
endmodule
module full_add(
input a,b,c,
output sum,carry);
assign sum = a^b^c;
assign carry = (a&b)|(b&c)|(a&c);
endmodule
module array_mul_4(
input [3:0]a,
input [3:0]b,
output [7:0]z
);
reg signed [3:0]p[3:0];
wire [10:0]c;
wire [5:0]s;

genvar g;
generate 
for(g=0;g<4;g=g+1)
and a0(p[g][0],a[g],b[0]);
and a1(p[g][1],a[g],b[1]);
and a2(p[g][2],a[g],b[2]);
and a3(p[g][3],a[g],b[3]);
endgenerate
assign z[0]=p[0][0];
half_add h0(z[1],c[0],p[1][0],p[0][1]);
half_add h1(s[0],c[1],p[1][1],p[2][0]);
half_add h2(s[1],c[2],p[3][0],p[2][1]);

full_add f0(z[2],c[3],s[0],c[0],p[0][2]);
full_add f1(s[2],c[4],s[1],c[1],p[1][2]);
full_add f2(s[3],c[5],c[2],p[2][2],p[3][1]);

full_add f3(z[3],c[6],s[2],c[3],p[0][3]);
full_add f4(s[4],c[7],s[3],c[4],p[1][3]);
full_add f5(s[5],c[8],p[2][3],p[3][2]);

half_add h3(z[4],c[9],s[4],c[6]);
full_add f6(z[5],c[10],s[5],c[7],c[9]);
full_add f7(z[7],z[6],c[10],p[3][3]);

endmodule
