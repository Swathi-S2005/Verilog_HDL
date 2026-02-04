module mux(
input a,b,c,d,
input s0,s1,
output reg  y);
always @(*)
begin
if (s0==0 && s1==0)
begin 
y=a;
end
else if (s0==0 && s1==1)
begin
y=b;
end
else if (s0==1 && s1==0)
begin
y=c;
end
else
begin
y=d;
end
end
endmodule

