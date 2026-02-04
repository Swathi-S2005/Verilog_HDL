module mux(
input [7:0]i,
input [2:0]s,
output reg y);
always @(*)
begin
if(s[0])
begin
if(s[1])
begin
if(s[2])
y=i[7];
else
y=i[6];
end
else
begin
if(s[2])
y=i[5];
else
y=i[4];
end
end
else 
begin
if(s[1])
begin
if(s[2])
y=i[3];
else
y=i[2];
end
else
begin
if(s[1])
y=i[1];
else
y=i[0];
end
end

end
endmodule

