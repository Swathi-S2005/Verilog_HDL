:module rca;
reg [7:0]a,b;
wire [7:0]sum;
wire cout;
wire [6:0]c;
function [1:0]half_adder;
input x,y;
begin
half_adder[0] = x^y;
half_adder[1] = x&y;
end
endfunction

function [1:0]full_adder;
input x,y,cin;
begin
full_adder[1] = x^y^cin;
full_adder[0] = (x&y)|(y&cin)|(cin&x);
end
endfunction

wire [1:0] ha0;
wire [1:0] fa1,fa2,fa3,fa4,fa5,fa6,fa7;

assign ha0 = half_adder(a[0],b[0]);
assign sum[0] = ha0[0];
assign c[0]   = ha0[1];

assign fa1 = full_adder(a[1],b[1],c[0]);
assign sum[1] = fa1[0];
assign c[1]   = fa1[1];

assign fa2 = full_adder(a[2],b[2],c[1]);
assign sum[2] = fa2[0];
assign c[2]   = fa2[1];

assign fa3 = full_adder(a[3],b[3],c[2]);
assign sum[3] = fa3[0];
assign c[3]   = fa3[1];

assign fa4 = full_adder(a[4],b[4],c[3]);
assign sum[4] = fa4[0];
assign c[4]   = fa4[1];

assign fa5 = full_adder(a[5],b[5],c[4]);
assign sum[5] = fa5[0];
assign c[5]   = fa5[1];

assign fa6 = full_adder(a[6],b[6],c[5]);
assign sum[6] = fa6[0];
assign c[6]   = fa6[1];

assign fa7 = full_adder(a[7],b[7],c[6]);
assign sum[7] = fa7[0];
assign cout   = fa7[1];

integer i,j;
initial begin
$dumpfile("rca.vcd");
$dumpvars(0,rca);
$monitor("Time=%0t,a=%b,b=%b,sum=%b,cout=%b",$time,a,b,sum,cout);
for(i=0;i<16;i=i+1)
begin
for(j=0;j<16;j=j+1)
begin
a=i;
b=j;
#10;
end
end
end
endmodule

