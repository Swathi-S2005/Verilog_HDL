module fsm(
input a,clk,rst,
output reg y);
parameter s0=2'b00,
s1=2'b01,
s2=2'b10;
reg [2:0]state, next_state;
always @(posedge clk or posedge rst)
begin 
if(rst)
 state <= 1'b0;
else
  state <= next_state;
end
always @(*)
begin
case(state)
s0:
if(a)
 next_state = s1;
else
 next_state = s0;
s1:
if(a)
 next_state = s1;
else
 next_state = s2;
s2:
 next_state = s0;
endcase
end
always @(*)
begin
if(state == s2)
 y = 1'b1;
else
 y=1'b0;
end
endmodule 

