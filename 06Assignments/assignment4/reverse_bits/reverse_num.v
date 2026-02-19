module reverse_num #(parameter n = 8)
(input [n-1:0]a,
	output [n-1:0]out);
function [n-1:0]reverse_num;
	input [n-1:0]num;
begin
reverse_num = 0;
while(num>0)
begin
	reverse_num = (reverse_num * 10)+ (num%10);
num =  num /10;
end
end
endfunction
assign out = reverse_num(a);
endmodule
