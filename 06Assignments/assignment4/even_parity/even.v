module odd_parity(
input a,b,c,d,
output out);
function odd;
input w,x,y,z;
begin
odd = (w^x^y^z);
end
endfunction
assign out = odd(a,b,c,d);
endmodule

