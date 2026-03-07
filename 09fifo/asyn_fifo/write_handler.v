module write_pointer #(parameter width=4, depth=4 )(
input wclk,
input wrst_n,
input w_en,
input [width-1:0]g_rptr_sync,
output reg [width-1:0]b_wptr,
output reg [width-1:0]g_wptr,
output reg full);

wire [width-1:0]b_wptr_n;
wire [width-1:0]g_wptr_n;
wire full_n;

assign b_wptr_n = (w_en && !full)? (b_wptr+1):b_wptr;
assign g_wptr_n = b_wptr_n^(b_wptr_n>>1);
assign full_n = (g_wptr_n[depth-1:depth-2] != g_rptr_sync[depth-1:depth-2]) && (g_wptr_n[depth-3:0] == g_rptr_sync[depth-3:0]);

always @(posedge wclk or  negedge wrst_n)
begin
if(!wrst_n)
begin
full <=0;
b_wptr <=0;
g_wptr <=0;
end

else
begin
b_wptr <= b_wptr_n;
g_wptr <= g_wptr_n;
full <= full_n;
end
end

endmodule

