module read_pointer #(parameter width=4)(
input rclk,
input rst_n,
input r_en,
input [width-1:0]g_wptr_sync,
output reg [width-1:0]b_rptr,
output reg [width-1:0]g_rptr,
output reg empty);

wire [width-1:0]b_rptr_n;
wire [width-1:0]g_rptr_n;
wire empty_n;

assign b_rptr_n = (r_en && !empty)? (b_rptr+1):b_rptr;
assign g_rptr_n = (b_rptr_n)^(b_rptr_n>>1);
assign empty_n = (g_rptr_n == g_wptr_sync);

always @(posedge rclk or negedge rst_n)
begin
if(!rst_n)
begin
empty <=0;
b_rptr <=0;
g_rptr <=0;
end

else
begin
b_rptr <= b_rptr_n;
g_rptr <= g_rptr_n;
empty <= empty_n;
end
end

endmodule

