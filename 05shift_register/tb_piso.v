module tb_shiftreg;
reg clk,rst;
reg [3:0]in;
reg load;
wire  out;
piso uut(
.clk(clk),
.rst(rst),
.in(in),
.load(load),
.out(out));
always #5 clk = ~clk;
  initial begin
    $dumpfile("shiftreg.vcd");
    $dumpvars(0,tb_shiftreg);
    $monitor("Time=%0t,in=%b,rst=%b,load=%b|out=%b",$time,in,rst,load,out);
     clk=0;rst=1;load = 1;
    in=4'b0011;#10;
    in=4'b1010;#10;
    load=0;
    in=4'b1111;#10;
    in=4'b1011;#10;
    rst=0; #10;
     load =1;in=4'b1101;#10;
     load =0;in=4'b1100;#10;
    #200  $finish;
  end
endmodule

