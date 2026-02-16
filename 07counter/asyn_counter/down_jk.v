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
endcase
end
endmodule

module counter(
input clk,rst,
output [3:0]count);
wire [3:0]q;

jk_ff jk1(
.clk(clk),
.rst(rst),
.j(1'b1),
.k(1'b1),
.q(q[0]));
 
jk_ff jk2(
.clk(q[0]),
.rst(rst),
.j(1'b1),
.k(1'b1),
.q(q[1]));

jk_ff jk3(
.clk(q[1]),
.rst(rst),
.j(1'b1),
.k(1'b1),
.q(q[2]));

jk_ff jk4(
.clk(q[2]),
.rst(rst),
.j(1'b1),
.k(1'b1),
.q(q[3]));
assign count = q;
endmodule

