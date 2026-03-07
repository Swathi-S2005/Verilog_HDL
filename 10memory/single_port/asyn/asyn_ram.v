module ram #(parameter width= 8 , address= 6, depth = 64)(
input clk,
input [width-1:0]data,
input wr_en,
input [address-1:0]addr,
output reg [width-1:0]q);
reg [width-1:0] mem[depth-1:0];

always @(posedge clk )
begin
if(wr_en)
mem[addr] <= data;
end
 
always @(*)
begin
	q <= mem[addr];
end

endmodule

