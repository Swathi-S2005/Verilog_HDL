module tb_star;
parameter n=5;
reg [n-1:0]a;
wire [n-1:0]out;
integer i,j,k;
initial begin
for(i=1;i<=n;i=i+1)
begin
for(j=5;j<=n;j=j-1)
begin
$write(" ");
end
for(k=0;k<n+1-i;k=k+1)
begin
$write("*");
end
$display(" ");
end
end
endmodule

