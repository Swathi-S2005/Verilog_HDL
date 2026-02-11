module sr_ff(
input s,r,clk,rst,
output reg q);
always @(posedge clk or posedge rst)
begin 
if(rst)
q<=1'b0;
else
case({s,r})
2'b00:q<=q;
2'b01:q<=1'b0;
2'b10:q<=1'b1;
2'b11:q<=1'bx;
endcase
end
endmodule

module d_ff(
input d,
input clk,rst,
output q);
assign s = d;
assign r = ~d;
sr_ff sr1(
.s(s),
.r(r),
.clk(clk),
.rst(rst),
.q(q));
endmodule

 

