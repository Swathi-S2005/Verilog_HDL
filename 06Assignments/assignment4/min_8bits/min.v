module minimum(
input [7:0]a,b,
output [7:0]out);
function [7:0]min;
input [7:0]x,y;
begin
if(x>y)
min = y;
else
min = x;
end
endfunction
assign out = min(a,b);
endmodule

