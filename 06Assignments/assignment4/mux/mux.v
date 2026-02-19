module data_selector(
input [3:0]in,
input [1:0]sel,
output out);
function mux;
input [3:0]i;
input [1:0]s;
begin
mux = s[1]?(s[0]?i[3]:i[2]):(s[0]?i[2]:i[1]);
end
endfunction
assign out = mux(in,sel);
endmodule
