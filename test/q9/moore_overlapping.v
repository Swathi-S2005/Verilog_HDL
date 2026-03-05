module seq(
input clk,rst,a,
output reg out);
parameter [2:0]s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011,
          s4=3'b100,
          s5=3'b101;
reg [2:0]state,next_state;
always @(posedge clk  or posedge rst)
begin
if(rst)
state <= 1'b0;
else 
state <= next_state;
end

always @(*)
begin
next_state <= 3'b000;
out <= 1'b0;
case(state)
s0:
begin
if(a)
next_state <= s1;
else
next_state <= s0; 
end
s1:
begin
if(a)
next_state <= s1;
else
next_state <= s2;
end

s2:
begin
if(a)
next_state <= s3;
else
next_state <= s0;
end

s3:
begin
if(a)
next_state <= s4;
else
next_state <= s2;
end

s4:
begin
if(a)
next_state <= s1;
else
next_state <= s5;
end

s5:

begin
	out<=1'b1;
if(a)
next_state <= s3;
else
next_state <= s0;
end
endcase
end
endmodule




