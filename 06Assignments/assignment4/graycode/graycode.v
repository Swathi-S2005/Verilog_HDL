module gray_code(
input [3:0]b,
output [3:0]g);
function [3:0]gray;
input [3:0]in;
begin
 gray[3]=in[3];
 gray[2]=in[3]^in[2];
 gray[1]=in[2]^i[1];
 gray[0]=in[1]^in[0];
end
endfunction
assign g= gray(b);
