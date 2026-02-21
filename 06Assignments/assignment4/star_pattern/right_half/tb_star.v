module tb_star;
parameter n=5;
reg [n-1:0]a;
wire [n-1:0]out;
integer i,j,k;
initial begin
for(i=1;i<=n;i=i+1)
begin
for(j=0;j<n-i;j=j+1)
begin
$write(" ");
end
for(k=0;k<i;k=k+1)
begin
$write("*");
end
$display(" ");
end
end
endmodule




