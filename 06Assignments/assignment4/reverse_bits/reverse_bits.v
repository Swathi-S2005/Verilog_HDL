module reverse_bits #(parameter n=5)
(input [n-1:0]a,
output [n-1:0]out);
function [n-1:0]reverse;
input [n-1:0]x;
integer i;
begin
for(i=0;i<n;i=i+1)
begin
reverse[i] = x[n-1-i];
end
end
endfunction
assign out = reverse(a);
endmodule

