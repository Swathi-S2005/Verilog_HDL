module mux(
input a,b,c,d,s0,s1,
output y);
wire y0,y1;
assign y0 = (~s1&a) | (s1&b);
assign y1 = (~s1&c) | (s1&d);
assign y = (~s0&y0) | (s0&y1); 
endmodule
 
