module sipo(
input in,clk,rst,
output reg [3:0]out);
reg [3:0]shift;
always @(posedge clk or posedge rst)
begin
if(rst)
begin
out <= 1'b0;
shift <= 4'b0000;
end
else
shift<= {shift[2:0],in};
out <= shift[3:0];
end
endmodule
