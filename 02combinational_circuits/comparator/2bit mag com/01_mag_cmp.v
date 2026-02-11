module mag_cmp(
input a,b,
output c,d,e
);
assign c = a>b;
assign d = a<b;
assign e = a==b;
endmodule

