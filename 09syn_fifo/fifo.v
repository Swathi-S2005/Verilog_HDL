module fifo #(parameter width=8, depth=4)
(input clk,rst,wr_en,rd_en,
input [width-1:0]din,
output full,empty,
output reg [width-1:0]dout);
reg [$clog2(depth):0]rd_ptr;
reg [$clog2(depth):0]wr_ptr;
reg [width-1:0] fifo[depth-1:0];

always @(posedge clk or posedge rst)
begin
	if(rst)
	begin
           wr_ptr <=0;
           rd_ptr <= 0;
           dout <=  0;
   end
   else
   begin

	if( wr_en && !full)
	begin
		fifo[wr_ptr]  <= din;
	        wr_ptr <= wr_ptr+1;
	end

	if( rd_en && !empty)
	begin
		dout <= fifo[rd_ptr];
		rd_ptr <= rd_ptr+1;
	end
end
end

assign full = ((wr_ptr+1) == rd_ptr);
assign empty =( wr_ptr == rd_ptr);
endmodule





