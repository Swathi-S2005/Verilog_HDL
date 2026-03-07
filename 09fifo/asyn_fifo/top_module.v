`include "synchronizer.v"
`include "memory.v"
`include "write_handler.v"
`include "read_handler.v"

module top #(parameter depth=8, width=8)(
input wclk,
input rclk,
input wrst_n,
input rst_n,
input w_en,
input r_en,
input [width-1:0]data_in,
output  [width-1:0]data_out,
output  full,
output  empty);

localparam a=$clog2(width)+1;
localparam b=$clog2(depth)+1;

wire [a-1:0]g_rptr_sync;
wire [a-1:0]g_wptr_sync;
wire [a-1:0]g_wptr;
wire [a-1:0]g_rptr;
wire [width-1:0]d_out;
wire tfull,tempty;
wire [a-1:0]w_ptr,r_ptr;

synchronizer #( .width(a)) a1(
.clk(wclk),
.rst_n(wrst_n),
.din(g_rptr),
.dout(g_rptr_sync));

synchronizer #( .width(a)) a2(
.clk(rclk),
.rst_n(rst_n),
.din(g_wptr),
.dout(g_wptr_sync));

mem #( .depth(depth), .width(width)) a3(
.wclk(wclk),
.rclk(rclk),
.w_en(w_en),
.r_en(r_en),
.data_in(data_in),
.data_out(d_out),
.w_ptr(w_ptr),
.r_ptr(r_ptr),
.full(tfull),
.empty(tempty));

write_pointer #( .width(a), .depth(b) ) a4(
.wclk(wclk),
.wrst_n(wrst_n),
.w_en(w_en),
.g_rptr_sync(g_rptr_sync),
.b_wptr(w_ptr),
.g_wptr(g_wptr),
.full(tfull));

read_pointer #( .width(a) ) a5(
.rclk(rclk),
.rst_n(rst_n),
.r_en(r_en),
.g_wptr_sync(g_wptr_sync),
.b_rptr(r_ptr),
.g_rptr(g_rptr),
.empty(tempty));

assign data_out = d_out;
assign full = tfull;
assign empty = tempty;
endmodule

