module t_ff(
input t,clk,rst,
output reg q);
always @(posedge clk or posedge rst)
begin
if(rst)
q<=1'b0;
else if(t)
q<=~q;
else 
q<=q;
end
endmodule

module d_ff(
input d,clk,rst,
output q);
assign t=d^q;
t_ff d1(
.t(t),
.clk(clk),
.rst(rst),
.q(q));
endmodule


