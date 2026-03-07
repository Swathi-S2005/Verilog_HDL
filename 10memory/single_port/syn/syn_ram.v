module ram(
input clk,
input [7:0]data,
input [5:0]addr,
input wr_en,
output reg [7:0]q);

reg [7:0] mem[63:0];

always @(posedge clk)
begin
	q<=0;
if(wr_en)
 mem[addr] <= data;
else
 q <= mem[addr];
end
endmodule

