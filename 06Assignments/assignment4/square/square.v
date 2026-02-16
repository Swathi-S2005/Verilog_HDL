module square_no(
input [7:0]a,b,
output [16:0]out);
function [16:0]square;
input [7:0]x,y;
begin
square = x**y;
end
endfunction
assign out = square(a,b);
endmodule

