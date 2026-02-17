module bitwise;
reg [2:0]a,b;
reg [2:0]x;
initial begin
a=3'd5;
b=3'b111;
x=a|b;
$display("a=%d,b=%b,x=%b",a,b,x);
end
endmodule

