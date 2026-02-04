module mux(
input a,b,c,d,s0,s1,
output reg y);
always @(*)
begin
case({s0,s1})
2'b00:y=a;
2'b01:y=b;
2'b10:y=c;
2'b11:y=d;
default y=1'b0;
endcase
end
endmodule

