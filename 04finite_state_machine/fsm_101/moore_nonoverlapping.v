module fsm(
input a,clk,rst,
output reg y);
parameter s0=2'b00,
s1=2'b01,
s2=2'b10,
s3=2'b11;
reg [3:0]state, next_state;
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
 next_state = s0; 
endcase
end
always @(posedge clk)
begin
if((state == s3)&&(a==1))
 y = 1'b1;
else
 y=1'b0;
end
endmodule 

