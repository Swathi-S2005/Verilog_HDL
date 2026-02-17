
module octal;
reg [5:0]y;
initial begin
y='ox2;
end
initial begin
$display("y=%b",y);
end
endmodule
