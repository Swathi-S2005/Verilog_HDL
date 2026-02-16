module counter(
input clk,rst,ori,
output reg [3:0]q);
always @(posedge clk or posedge rst)
begin
if(rst)
q<=4'b0000;
else if(ori)
q<=4'b1000;
else
q<=({q[0],q[3:1]});
end
endmodule
