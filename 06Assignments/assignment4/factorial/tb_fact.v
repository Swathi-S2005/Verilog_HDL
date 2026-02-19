module tb_fact;
reg [31:0]a;
wire[31:0]out;
fact uut(
.a(a),
.out(out));
integer i;
initial begin
$dumpfile("fact.vcd");
$dumpvars(0,tb_fact);
$monitor("a=%d|out=%d",a,out);
for(i=0;i<10;i=i+1)
begin
a=$urandom_range(20,0);
#10;
end
end
endmodule

