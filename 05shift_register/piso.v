module piso(
input [3:0]in,
input clk,rst,load,
output reg out);
reg [3:0]shift;
always @(posedge clk or posedge rst)
begin
if(rst)
 shift <= 4'b0000;
else if(load)
 shift <= in;
else
begin
 shift <= ({shift[2:0],in});
 out <= shift[3];
end
end
endmodule

