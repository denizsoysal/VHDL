// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jun 16 11:20:03 2021
// Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_ctrl_io_exp_0_0/top_bd_ctrl_io_exp_0_0_stub.v
// Design      : top_bd_ctrl_io_exp_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ctrl_io_exp,Vivado 2020.1" *)
module top_bd_ctrl_io_exp_0_0(rstn, clk, leds_state, w_valid, w_ready, r_ready, 
  r_valid, r_data, w_data)
/* synthesis syn_black_box black_box_pad_pin="rstn,clk,leds_state[15:0],w_valid,w_ready,r_ready,r_valid,r_data[31:0],w_data[31:0]" */;
  input rstn;
  input clk;
  input [15:0]leds_state;
  output w_valid;
  input w_ready;
  output r_ready;
  input r_valid;
  input [31:0]r_data;
  output [31:0]w_data;
endmodule
