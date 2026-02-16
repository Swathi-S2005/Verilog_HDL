module addition(
input [7:0]a,b,
output [8:0]out);
function [8:0]sum;
input [7:0]x,y;
begin
sum = x+y;
end
endfunction
assign out = sum(a,b);
endmodule

