module d_ff(
input d, clk,rst,
output reg q);
always @(posedge clk or posedge rst)
begin
if(rst)
 q<=1'b0;
else
 q<=d;
end
endmodule

module sr_ff(
input s,r,clk,rst,
output q);
wire a,b;
assign b = s|(~r&q);
assign a=((s&r)? 1'bx:b);
d_ff sr1(
.d(a),
.clk(clk),
.rst(rst),
.q(q));
endmodule

