module synchronizer #(parameter width = 4)(
input clk,
input rst_n,
input [width-1:0]din,
output reg [width-1:0]dout);
reg [width-1:0]q;
always @(posedge clk or negedge rst_n)
begin
if(!rst_n)
begin
q<= 0;
dout <= 0;
end
else
begin
q <= din;
dout <= q;
end
end
endmodule



