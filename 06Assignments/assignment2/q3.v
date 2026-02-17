module test(output [32:0]b);
real a=14.5;
assign b = a;
always @(*)
begin
$display("a=%b|b=%b",a,b);
end
endmodule
