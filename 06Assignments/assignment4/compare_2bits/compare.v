module comparator(
input [3:0]a,b,
output greater,lesser,equal);
function [2:0]cmp;
input [3:0]x,y;
begin
cmp[0] = (x>y);
cmp[1] = (x<y);
cmp[2] = (x==y);
end
endfunction
wire [2:0]out;
assign out = cmp(a,b);

assign greater = out[0];
assign lesser = out[1];
assign equal = out[2];
endmodule

