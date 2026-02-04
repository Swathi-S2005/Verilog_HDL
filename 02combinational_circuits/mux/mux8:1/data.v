module mux(
input [7:0]i,
input [2:0]s,
output y);
assign y = s[0] ? 
	(s[1] ? 
	(s[2]?i[0]:i[1]):
	(s[2]?i[2]:i[3])):
	(s[1] ?
       	(s[2] ? i[4]:i[5]): 
	(s[2] ? i[6]:i[7]));
endmodule
