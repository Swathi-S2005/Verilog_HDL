module counter(
input clk,rst,ctrl,
output reg [3:0] count);
always @(posedge clk)
begin
if(rst)
count <= 4'b0000;
else if(ctrl)
begin
count <= count+1;
end
else
begin	
count <= count-1;
end
end
endmodule

