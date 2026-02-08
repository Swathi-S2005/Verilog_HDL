module shiftreg(
input clk,rst,in,
output reg out);
reg [3:0]shift;
always @(posedge clk or posedge rst)
begin
if(rst)
  shift <= 4'b0000;
else
begin
 shift <= {in,shift[2:0]};
 out <= shift[3];
end
end
endmodule


