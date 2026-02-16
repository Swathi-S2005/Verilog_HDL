module counter #(parameter n=6)(
input clk,rst,
output reg [n-1:0]count);
always @(posedge clk)
begin
if(rst)
count<=5'b0000;
else 
count <= count+1;
end
endmodule

