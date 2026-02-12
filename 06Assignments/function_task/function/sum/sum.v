module add(
input [3:0]a,b,
output [4:0]out);

function [4:0] sum;
input [3:0]x,y;
begin
sum=a+b;
end
endfunction

assign out = sum(a,b);
endmodule

