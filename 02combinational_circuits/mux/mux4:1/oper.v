module mux(
input a,b,c,d,s0,s1,
output y);
assign y = s0 ? (s1?d:c) : (s1?b:a);
endmodule

