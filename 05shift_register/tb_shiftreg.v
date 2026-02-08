module tb_shiftreg;
reg clk,rst,in;
wire out;
shiftreg uut(
.clk(clk),
.rst(rst),
.in(in),
.out(out));
always #5 clk = ~clk;
  initial begin
    $dumpfile("shiftreg.vcd");
    $dumpvars(0,tb_shiftreg);
    $monitor("Time=%0t,in=%b,rst=%b,out=%b",$time,in,rst,out);
     clk=0;rst=1;
    in=1;#10;
    clk=1;
    in=0;#10;
    in=1;#10;
    in=1;#10;
    rst=0; in=1;#10;
     in=1;#10;
     in=0;#10;
     in=1;#10;
     in=1;#10;
    $finish;
  end
endmodule

