module halfsub(
input a,b,
output diff, borrow
);
assign diff = a^b;
assign borrow = ~a&b;
endmodule

