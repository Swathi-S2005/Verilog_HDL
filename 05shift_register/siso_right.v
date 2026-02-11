module shiftreg(
input clk,rst,in,
output reg out);
reg [3:0]shift;
always @(posedge clk or posedge rst)
begin
if(rst)
begin
  out <= 1'b0;
  shift<= 4'b0000;
end
 
else
begin
 shift <= {in,shift[3:1]};
 out <= shift[3];
end
end
endmodule


