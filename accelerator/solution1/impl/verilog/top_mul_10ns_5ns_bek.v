// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

(* use_dsp48 = "yes" *) module top_mul_10ns_5ns_bek_MulnS_0(clk, ce, a, b, p);
input clk;
input ce;
input[10 - 1 : 0] a; // synthesis attribute keep a "true"
input[5 - 1 : 0] b; // synthesis attribute keep b "true"
output[15 - 1 : 0] p;

reg [10 - 1 : 0] a_reg0;
reg [5 - 1 : 0] b_reg0;
wire [15 - 1 : 0] tmp_product;
reg [15 - 1 : 0] buff0;

assign p = buff0;
assign tmp_product = a_reg0 * b_reg0;
always @ (posedge clk) begin
    if (ce) begin
        a_reg0 <= a;
        b_reg0 <= b;
        buff0 <= tmp_product;
    end
end
endmodule

`timescale 1 ns / 1 ps
module top_mul_10ns_5ns_bek(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



top_mul_10ns_5ns_bek_MulnS_0 top_mul_10ns_5ns_bek_MulnS_0_U(
    .clk( clk ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

