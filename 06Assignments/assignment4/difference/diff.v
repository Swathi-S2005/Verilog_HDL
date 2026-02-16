module diff(
input [7:0]a,b,
output [7:0]out);
function [7:0]sub;
input [7:0]x,y;
begin
sub = x-y;
end
endfunction
assign out = sub(a,b);
endmodule

