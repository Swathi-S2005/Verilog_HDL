module tb_alu;
reg [3:0]a,b;
reg [2:0]sel;
wire [3:0]out;
wire carry;
alu uut(
.a(a),
.b(b),
.sel(sel),
.out(out),
.carry(carry));
initial begin
$dumpfile("alu.vcd");
$dumpvars(0,tb_alu);
$monitor("Time=%0t,a=%b,b=%b,sel=%b,out=%b,carry=%b",$time,a,b,sel,out,carry);
	a=4'b0001;b=4'b1010;sel=3'b000;
repeat(8) begin
    #10;
    sel= sel+1;


end
$display("simulation finished");
end
endmodule

