module encoder(
input [7:0]a,
output reg [2:0]y);
always @(*)
begin
casez(a)
8'b00000001:y=3'b000;
8'b0000001z:y=3'b001;
8'b000001zz:y=3'b010;
8'b00001zzz:y=3'b011;
8'b0001zzzz:y=3'b100;
8'b001zzzzz:y=3'b101;
8'b01zzzzzz:y=3'b110;
8'b1zzzzzzz:y=3'b111;
endcase
end 
endmodule


