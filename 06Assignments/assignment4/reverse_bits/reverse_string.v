module reverse_string #(parameter n=10)
(input [8*n-1:8]a,
output [8*n-1:8]out);
function [8*n-1:8]reverse;
input [8*n-1:8]x;
integer i;
begin
for(i=0;i<8*n;i=i+1)
begin
reverse[i*8+:8] = x[(n-1-i)*8+:8];
end
end
endfunction
assign out = reverse(a);
endmodule

