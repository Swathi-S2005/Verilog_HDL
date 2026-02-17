module shift;
reg [2:0]a;
reg [1:0]X;
initial begin
a=4'd10;
X=a>>1;
$display("a=%d,X=%b",a,X);

end
endmodule

