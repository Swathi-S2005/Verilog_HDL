module watch(
input start,
input stop,
input clk, 
input rst_n,
input pause,
input split,
output reg alarm);

always @(posedge clk or negedge rst_n)
begin

if(!rst_n)

