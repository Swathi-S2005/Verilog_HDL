module prime_no #(parameter n= 4)(
input [n-1:0]a,
output out);
function [0:0] prime;
input [n-1:0]num;
integer i;
begin
if(num<2)
prime =0;
else
begin
prime =1;
for(i=2;i<num;i=i+1)
begin
if(num%i==0)
prime =0;
end
end
end
endfunction
assign out = prime(a);
endmodule

