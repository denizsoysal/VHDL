// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jun 16 14:26:25 2021
// Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_leds_display_0_0/top_bd_leds_display_0_0_stub.v
// Design      : top_bd_leds_display_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "leds_display,Vivado 2020.1" *)
module top_bd_leds_display_0_0(rstn, clk, test_done, test_results, clk_slow, 
  io_exp_0, io_exp_1, board_started, sw_not_programmed, shut_down)
/* synthesis syn_black_box black_box_pad_pin="rstn,clk,test_done[24:0],test_results[24:0],clk_slow,io_exp_0[15:0],io_exp_1[15:0],board_started,sw_not_programmed,shut_down" */;
  input rstn;
  input clk;
  input [24:0]test_done;
  input [24:0]test_results;
  input clk_slow;
  output [15:0]io_exp_0;
  output [15:0]io_exp_1;
  input board_started;
  input sw_not_programmed;
  input shut_down;
endmodule
