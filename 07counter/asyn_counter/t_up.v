module t_ff(
input clk,rst,t,
output reg q,
output qbar);
assign qbar = ~q;
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

module counter(
input clk,rst,
output [3:0]q,count,qbar);
t_ff t1(
.t(1'b1),
.clk(clk),
.rst(rst),
.q(q[0]),
.qbar(qbar[0]));

t_ff t2(
.t(1'b1),
.clk(qbar[0]),
.rst(rst),
.q(q[1]),
.qbar(qbar[1]));

t_ff t3(
.t(1'b1),
.clk(qbar[1]),
.rst(rst),
.q(q[2]),
.qbar(qbar[2]));

t_ff t4(
.t(1'b1),
.clk(qbar[2]),
.rst(rst),
.q(q[3]),
.qbar(qbar[3]));
assign count = q;
endmodule

