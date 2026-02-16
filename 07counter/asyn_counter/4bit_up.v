module counter(
input clk,rst,
output [3:0]count);
reg [3:0]q;
wire [3:0]qbar;
always @(posedge clk or posedge rst)
begin
if(rst)
q <= 4'b0000;
else
q[0]  <= q[0]+1;
end

always @(posedge qbar[0] or posedge rst)
begin
if(rst)
q <= 4'b0000;
else
q[1]  <= q[1]+1;
end

always @(posedge qbar[1] or posedge rst)
begin
if(rst)
q <= 4'b0000;
else
q[2]  <= q[2]+1;
end

always @(posedge qbar[2] or posedge rst)
begin
if(rst)
q <= 4'b0000;
else
q[3]  <= q[3]+1;
end
assign count = q;
assign qbar  = ~q;
endmodule

