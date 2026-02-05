module tb_code;
reg [3:0]b;
wire [3:0]g;
code uut(
.b(b),
.g(g));
initial begin
$dumpfile("code.vcd");
$dumpvars(0,tb_code);
$monitor("Time=%0t|b=%b|g=%b",$time,b,g);
b=4'b0101;#10;
b=4'b1111;#10;
b=4'b0000;#10;
$finish;
end

endmodule

