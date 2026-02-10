module jk_ff(
input j,k,clk,rst,
output reg q);
always @(posedge clk or posedge rst)
begin
if(rst)
  q<=1'b0;
else
case({j,k})
2'b00:q<=q;
2'b01:q<=1'b0;
2'b10:q<=1'b1;
2'b11:q<=~q;
default: q<= 1'b0;
endcase
end
endmodule

module t_ff(
input t,clk,rst,
output q);
jk_ff jk1(
.j(t),
.k(t),
.clk(clk),
.rst(rst),
.q(q));
endmodule

