module tb_logic;
reg [2:0]a,b;
reg y;
initial begin
a=3'd5;
b=3'b111;
y=a&&b;
$display("a=%d|b=%b|y=%b",a,b,y);
end
endmodule

