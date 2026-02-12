module tb_alu;
reg [3:0]a,b;
reg [1:0]sel;
wire [3:0]out;
wire cout;
alu uut(
.a(a),
.b(b),
.sel(sel),
.out(out));
initial begin
$dumpfile("alu.vcd");
$dumpvars(0,tb_alu);
$monitor("Time=%0t,a=%b,b=%b,sel=%b,out=%b,cout=%b",$time,a,b,sel,out,cout);
	a=4'b0001;b=4'b1010;sel=2'b00;
repeat(8) begin
    #10;
    sel= sel+1;


end
$finish;

end
endmodule

