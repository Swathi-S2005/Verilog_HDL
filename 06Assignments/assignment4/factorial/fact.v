module fact(
input [31:0]a,
output [31:0]out);
function automatic [31:0]factorial;
input [31:0]n;
begin 
if(n<=1)
factorial =1;
else
factorial = n* (factorial (n-1));
end
endfunction
assign out = factorial(a);
endmodule

