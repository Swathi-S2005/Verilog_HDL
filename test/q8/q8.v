module seq(
input clk,rst,x,
output reg y);
parameter s0=2'b00,
          s1=2'b01,
          s2=2'b10;
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
next_state <= 2'b00;
y <= 1'b0;
case(state)
s0:
begin
if(x)
next_state <= s1;
else
next_state <= s0; 
end

s1:
begin
if(x)
next_state <= s2;
else
next_state <= s0;
end

s2:
begin
if(x)
begin
next_state <= s2;
y<=1'b1;
end
else
next_state <= s0;
end

endcase
end
endmodule




