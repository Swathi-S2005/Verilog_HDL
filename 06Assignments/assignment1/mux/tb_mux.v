module tb_mux;
 reg [7:0]i;
 reg [2:0]s;
 wire y;
mux uut(
.i(i),
.s(s),
.y(y));
initial begin
$dumpfile("mux.vcd");
$dumpvars(0,tb_mux);
$monitor("Time=%0t|i=%b|s=%b|y=%b", $time,i,s,y);
i=8'b10100001;
s=3'b000;#10;
s=3'b001;#10;
s=3'b010;#10;
s=3'b011;#10;
s=3'b100;#10;
s=3'b101;#10;
s=3'b110;#10;
s=3'b111;#10;
$finish;
end
endmodule

