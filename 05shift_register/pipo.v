module pipo(
input [3:0]in,
input clk,rst,
output reg [3:0]out);
always @(posedge clk or posedge rst)
begin
if(rst)
begin
  out<= 1'b0;
end
else
 out<= in;
end
endmodule
