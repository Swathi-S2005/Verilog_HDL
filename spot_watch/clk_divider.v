module clk_divider #(parameter system_clk = 50000000, baud_rate = 100)(
input clk,
input rst_n,
output reg tick);

localparam count_max = system_clk/baud_rate;

reg [31:0]count;

always @(posedge clk or negedge rst_n)
begin
if(!rst_n)
begin
count <= 0;
tick <= 0;
end

else
begin

if(count == count_max-1)
begin
count <= 0;
tick <= 1;
end

else
begin
count <= count +1'b1;
tick <= 0;
end

end
end
endmodule


