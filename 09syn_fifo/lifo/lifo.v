module lifo #(parameter depth = 8, width =4)(
input clk,
input rst_n,
input push,
input pop,
input [width-1:0]din,
output reg [width-1:0]dout,
output reg full,
output reg empty);
reg [width-1:0] stack[depth-1:0];
reg [$clog2(depth):0]stack_ptr;
always @(posedge clk or negedge rst_n)
begin
if(!rst_n)
begin
full <= 0;
empty<=1;
dout<=0;
stack_ptr <= 0;
end

else
begin
if(push && !full)
begin
stack[stack_ptr] <= din;
stack_ptr <= stack_ptr +1;
empty <= 0;
end
if(stack_ptr == depth-1)
full <= 1;


if(pop && !empty)
begin
stack_ptr <= stack_ptr -1;
full <=0;
end

if(stack_ptr == 1)
empty <= 1;

end
end
always @(*)
begin
if(pop && !empty)
dout <= stack[stack_ptr -1];
else
dout <= 0;
end
endmodule





