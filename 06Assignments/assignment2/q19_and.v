module tb_gates;
reg a,b;
wire and_gate,or_gate,nand_gate,nor_gate,xor_gate,xnor_gate;
assign and_gate = a ? b:0;
assign or_gate = a ? 1:b;
assign nand_gate = a ? (~b):1;
assign nor_gate = a ? 0:(~b);
assign xor_gate = a ? (~b):b;
assign xnor_gate = a ? b:(~b);
initial begin
$dumpfile("gates.vcd");
$dumpvars(0,tb_gates);
$monitor("Time=%0t|a=%b|b=%b|and_gate=%b|or_gate=%b|nand_gate=%b|nor_gate=%b|xor_gate=%b|xnor_gate=%b",$time,a,b,and_gate,or_gate,nand_gate,nor_gate,xor_gate,xnor_gate);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
end
endmodule

