module tb_mux;
reg [3:0]in;
reg [1:0]sel;
wire out;
data_selector uut(
.in(in),
.sel(sel),
.out(out));
initial begin 
$dumpfile("muc.vcd");
$dumpvars(0, tb_mux);
$monitor("Time=%0t | sel=%b| in=%b| out=%b", $time,sel,in,out);

in[0]=0;in[1]=1;in[2]=0;in[3]=1;
sel[0]=0;sel[1]=0;#10;
sel[0]=0;sel[1]=1;#10;
sel[0]=1;sel[1]=0;#10;
sel[0]=1;sel[1]=1;#10;
$finish;
end
endmodule
