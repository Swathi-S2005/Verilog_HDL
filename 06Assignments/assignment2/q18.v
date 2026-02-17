module addition;
reg [3:0]a= 4'b0100;
reg [3:0]b;
initial
begin
b = a+1'bx;
$display("a=%b|b=%b",a,b);
end
endmodule
