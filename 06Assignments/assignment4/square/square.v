module square_no(
input [7:0]a,
output [16:0]out);
function [16:0]square;
input [7:0]x;
begin
square = x**2;
end
endfunction
assign out = square(a);
endmodule

