module tb_fsm;
  reg a;
  reg clk,rst;
  wire y;
 fsm uut(
    .a(a),
    .clk(clk),
    .rst(rst),
    .y(y));
  always #5 clk = ~clk;
  initial begin
    $dumpfile("fsm.vcd");
    $dumpvars(0,tb_fsm);
    $monitor("Time=%0t,a=%b,rst=%b,y=%b",$time,a,rst,y);
    clk =0;rst=1;a=1;#10;
    #10 rst = 0;
    a=1;#10;
    a=1;#10;
    a=0;#10;
     a=1;#10;
     a=1;#10;
     a=0;#10;
     a=1;#10;
     a=1;#10;
    $finish;
  end
endmodule

