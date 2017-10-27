-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Mon Oct 23 20:39:56 2017
-- Host        : T3400 running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/yuzou/bnn-fpga-k7/VerilogPrj/VerilogPrj.srcs/sources_1/ip/bnn_accelerator/bnn_accelerator_stub.vhdl
-- Design      : bnn_accelerator
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bnn_accelerator is
  Port ( 
    wt_i_V_ce0 : out STD_LOGIC;
    kh_i_V_ce0 : out STD_LOGIC;
    dmem_i_V_ce0 : out STD_LOGIC;
    dmem_o_V_ce0 : out STD_LOGIC;
    dmem_o_V_we0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    wt_i_V_address0 : out STD_LOGIC_VECTOR ( 12 downto 0 );
    wt_i_V_q0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    kh_i_V_address0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    kh_i_V_q0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dmem_i_V_address0 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    dmem_i_V_q0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dmem_o_V_address0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    dmem_o_V_d0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    n_inputs_V : in STD_LOGIC_VECTOR ( 15 downto 0 );
    n_outputs_V : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input_words_V : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output_words_V : in STD_LOGIC_VECTOR ( 15 downto 0 );
    layer_mode_V : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dmem_mode_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    width_mode_V : in STD_LOGIC_VECTOR ( 1 downto 0 );
    norm_mode_V : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end bnn_accelerator;

architecture stub of bnn_accelerator is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "wt_i_V_ce0,kh_i_V_ce0,dmem_i_V_ce0,dmem_o_V_ce0,dmem_o_V_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,wt_i_V_address0[12:0],wt_i_V_q0[63:0],kh_i_V_address0[5:0],kh_i_V_q0[63:0],dmem_i_V_address0[10:0],dmem_i_V_q0[63:0],dmem_o_V_address0[6:0],dmem_o_V_d0[63:0],n_inputs_V[15:0],n_outputs_V[15:0],input_words_V[15:0],output_words_V[15:0],layer_mode_V[2:0],dmem_mode_V[0:0],width_mode_V[1:0],norm_mode_V[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top,Vivado 2016.4";
begin
end;
