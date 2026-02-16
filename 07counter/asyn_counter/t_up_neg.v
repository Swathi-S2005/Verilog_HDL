module t_ff(
input clk,rst,t,
output reg q);
always @(negedge clk or posedge rst)
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
output [3:0]q,
output [3:0]count);
t_ff t1(
.t(1'b1),
.clk(clk),
.rst(rst),
.q(q[0]));

t_ff t2(
.t(1'b1),
.clk(q[0]),
.rst(rst),
.q(q[1]));

t_ff t3(
.t(1'b1),
.clk(q[1]),
.rst(rst),
.q(q[2]));

t_ff t4(
.t(1'b1),
.clk(q[2]),
.rst(rst),
.q(q[3]));
assign	count = q;
endmodule

