module mem #(parameter depth= 8, width=8)(
input wclk,
input rclk,
input w_en,
input r_en,
input [width-1:0]data_in,
input [$clog2(depth):0]w_ptr,
input [$clog2(depth):0]r_ptr,
input full,
input empty,
output reg [width-1:0]data_out);

reg [width-1:0] mem[depth-1:0];
always @(posedge wclk )
begin

if(w_en && !full)
mem[w_ptr[$clog2(depth)-1:0]] <= data_in;
end


always @(posedge rclk)
begin

if(r_en && !empty)
data_out <= mem[r_ptr[$clog2(depth)-1:0]];
end
endmodule

