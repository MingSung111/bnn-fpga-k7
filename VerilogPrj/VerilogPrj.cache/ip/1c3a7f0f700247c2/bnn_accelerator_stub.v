// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Mon Oct 23 20:39:38 2017
// Host        : T3400 running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bnn_accelerator_stub.v
// Design      : bnn_accelerator
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(wt_i_V_ce0, kh_i_V_ce0, dmem_i_V_ce0, 
  dmem_o_V_ce0, dmem_o_V_we0, ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, 
  wt_i_V_address0, wt_i_V_q0, kh_i_V_address0, kh_i_V_q0, dmem_i_V_address0, dmem_i_V_q0, 
  dmem_o_V_address0, dmem_o_V_d0, n_inputs_V, n_outputs_V, input_words_V, output_words_V, 
  layer_mode_V, dmem_mode_V, width_mode_V, norm_mode_V)
/* synthesis syn_black_box black_box_pad_pin="wt_i_V_ce0,kh_i_V_ce0,dmem_i_V_ce0,dmem_o_V_ce0,dmem_o_V_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,wt_i_V_address0[12:0],wt_i_V_q0[63:0],kh_i_V_address0[5:0],kh_i_V_q0[63:0],dmem_i_V_address0[10:0],dmem_i_V_q0[63:0],dmem_o_V_address0[6:0],dmem_o_V_d0[63:0],n_inputs_V[15:0],n_outputs_V[15:0],input_words_V[15:0],output_words_V[15:0],layer_mode_V[2:0],dmem_mode_V[0:0],width_mode_V[1:0],norm_mode_V[1:0]" */;
  output wt_i_V_ce0;
  output kh_i_V_ce0;
  output dmem_i_V_ce0;
  output dmem_o_V_ce0;
  output dmem_o_V_we0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [12:0]wt_i_V_address0;
  input [63:0]wt_i_V_q0;
  output [5:0]kh_i_V_address0;
  input [63:0]kh_i_V_q0;
  output [10:0]dmem_i_V_address0;
  input [63:0]dmem_i_V_q0;
  output [6:0]dmem_o_V_address0;
  output [63:0]dmem_o_V_d0;
  input [15:0]n_inputs_V;
  input [15:0]n_outputs_V;
  input [15:0]input_words_V;
  input [15:0]output_words_V;
  input [2:0]layer_mode_V;
  input [0:0]dmem_mode_V;
  input [1:0]width_mode_V;
  input [1:0]norm_mode_V;
endmodule
