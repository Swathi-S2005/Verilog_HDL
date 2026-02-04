module mux(
input a,b,s,
output reg y);
always @(*)
if (s==1'b0)
begin	
  y=a;
end
else
begin
 y=b;
end
endmodule
