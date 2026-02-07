module fsm(
input a,clk,rst,
output reg y);
parameter s0=3'b000,
s1=3'b001,
s2=3'b010,
s3=3'b011,
s4=3'b11;
reg [4:0]state, next_state;
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
if(a)
 next_state = s3;
else
 next_state = s0;
s3:
if(a)
 next_state = s1;
else
 next_state = s4;
s4:
if(a)
 next_state = s1;
else
 next_state = s0;

endcase
end
always @(*)
begin
if(state == s4)
 y = 1'b1;
else
 y=1'b0;
end
endmodule 

