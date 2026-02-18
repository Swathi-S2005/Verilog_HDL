module tb;
reg [3:0]a,b;
reg ctrl;
wire [3:0]sum;
wire cout;
wire cin;
wire [2:0]c;
wire [3:0]d;


function [1:0]full_adder;
input x,y,z;
begin
full_adder[0]= x^y^z;
full_adder[1]=(x&y)|(y&z)|(z&x);
end
endfunction

assign d[0]=ctrl^b[0];
assign d[1]=ctrl^b[1];
assign d[2]=ctrl^b[2];
assign d[3]=ctrl^b[3];

wire [1:0]fa0,fa1,fa2,fa3;

assign fa0 = full_adder(a[0],d[0],cin);
assign sum[0] = fa0[0];
assign c[0]= fa0[1];

assign fa1 = full_adder(a[1],d[1],c[0]);
assign sum[1] = fa1[0];
assign c[1] = fa1[1];

assign fa2 = full_adder(a[2],d[2],c[1]);
assign sum[2] = fa2[0];
assign c[2] = fa2[1];

assign fa3 = full_adder(a[3],d[3],c[2]);
assign sum[3] = fa3[0];
assign cout = fa3[1];
assign cin = ctrl;
integer i,j;
initial begin
$dumpfile("rca.vcd");
$dumpvars(0,tb);
$monitor("Time=%0t,a=%b,b=%b,d=%b,ctrl=%b,sum=%b,cout=%b",$time,a,b,d,ctrl,sum,cout);
ctrl=0;
for(i=0;i<4;i=i+1)
begin
for(j=0;j<4;j=j+1)
begin	
a=i;
b=j;
#10;
end
end
ctrl=1;
for(i=0;i<4;i=i+1)
begin
for(j=0;j<4;j=j+1)
begin
a=i;
b=j;
#10;
end
end

end
endmodule
