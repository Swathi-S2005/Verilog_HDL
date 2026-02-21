module star_pattern #(parameter n=5)
(input [n-1:0]a,
output [n-1:0]out);
function [n-1:0]star;
input [n-1:0]x;
integer i;
begin
for(i=0;i<n;i=i+1)
begin
star[i] = x[i];
end

end
endfunction
assign out = star(a);
endmodule



