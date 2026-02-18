module sr_ff(
input clk,s,r,
output q,qbar);
nor n1(q,clk,s,qbar);
nor n2(qbar,clk,r,q);
endmodule

