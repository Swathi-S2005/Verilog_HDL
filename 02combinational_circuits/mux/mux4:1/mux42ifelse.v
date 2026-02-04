module mux(
input a,b,c,d,s0,s1,
output reg y);
always @(*)
begin
if(s0)
begin
if(s1)
 y=b;
else 
y=a;
end
else 
begin
if(s1)
 y=d;
else 
y=a;
end
end
endmodule

