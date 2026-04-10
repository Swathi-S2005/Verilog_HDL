// Code your design here
module lfsr(
  input clk,rst_n,
  output reg [3:0]out);
  always @(posedge clk or negedge rst_n)
    begin
      if(!rst_n)
        out <= 4'b0001;
      else
        out <= {out[2:0],out[3]^out[2]};
    end
endmodule

// Code your testbench here
// or browse Examples
module tb;
  reg clk,rst_n;
  wire [3:0]out;
  lfsr uut(
    .clk(clk),
    .rst_n(rst_n),
    .out(out));
  
  always #5 clk =~clk;
  initial begin
  clk = 0;
  rst_n = 0;
  #10 rst_n = 1;

  #200;

  rst_n = 0; 
  #10 rst_n = 1;

  #200;
  $finish;
end
    initial begin
$monitor("time=%0t|out=%b",$time,out);
    end
endmodule

