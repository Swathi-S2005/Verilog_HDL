module reduction;
reg [2:0]a,b;
reg [2:0]x;
initial begin
a=3'd4;
x=^a;
$display("a=%d,x=%b",a,x);

end
endmodule

