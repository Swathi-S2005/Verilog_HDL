module t_ff(
input clk,rst,t,
output reg q);
always @(posedge clk or posedge rst)
begin
if(rst)
q<= 1'b0;
else if (t) 
q<= ~q;
else
q<=q;
end
endmodule

module jk_ff(
input j,k,clk,rst,
output q);
assign t = (k&q)|(j*~q);
t_ff jk1(
.t(t),
.clk(clk),
.rst(rst),
.q(q));
endmodule

