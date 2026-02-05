module tb_code;
reg [3:0]g;
wire [3:0]b;
code uut(
.g(g),
.b(b));
initial begin
$dumpfile("code.vcd");
$dumpvars(0,tb_code);
$monitor("Time=%0t|g=%b|b=%b",$time,g,b);
g=4'b0101;#10;
g=4'b1111;#10;
g=4'b0000;#10;
$finish;
end

endmodule


