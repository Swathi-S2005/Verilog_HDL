module alu(
input [3:0]a,b,
input [2:0]sel,
output reg [3:0]out,
output reg carry);
reg [4:0]temp;
always @(*)
begin
carry=0;out=0;
case(sel)
3'b000:
begin
temp<= a+b;
out<= temp[3:0];
carry <= temp[4];
end
3'b001:
out <= a-b;
3'b010:
out<= a*b;
3'b011:
out <= a%b;
3'b100:
out<= a<<1;
3'b101:
out <= a>>1;
3'b110:
out <= a&b;
3'b111:
out<= a^b;
default:
out <= 1'b0;
endcase
end
endmodule

