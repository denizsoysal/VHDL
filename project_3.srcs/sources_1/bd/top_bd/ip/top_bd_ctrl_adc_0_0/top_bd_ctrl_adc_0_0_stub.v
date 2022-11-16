// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jun 16 11:20:03 2021
// Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_ctrl_adc_0_0/top_bd_ctrl_adc_0_0_stub.v
// Design      : top_bd_ctrl_adc_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ctrl_adc,Vivado 2020.1" *)
module top_bd_ctrl_adc_0_0(rstn, clk, ADC_eoc, AIN0_value, AIN1_value, 
  AIN2_value, AIN3_value, AIN4_value, AIN5_value, AIN6_value, AIN7_value, AIN8_value, AIN9_value, 
  w_valid, w_ready, r_ready, r_valid, r_data, w_data)
/* synthesis syn_black_box black_box_pad_pin="rstn,clk,ADC_eoc,AIN0_value[11:0],AIN1_value[11:0],AIN2_value[11:0],AIN3_value[11:0],AIN4_value[11:0],AIN5_value[11:0],AIN6_value[11:0],AIN7_value[11:0],AIN8_value[11:0],AIN9_value[11:0],w_valid,w_ready,r_ready,r_valid,r_data[11:0],w_data[11:0]" */;
  input rstn;
  input clk;
  input ADC_eoc;
  output [11:0]AIN0_value;
  output [11:0]AIN1_value;
  output [11:0]AIN2_value;
  output [11:0]AIN3_value;
  output [11:0]AIN4_value;
  output [11:0]AIN5_value;
  output [11:0]AIN6_value;
  output [11:0]AIN7_value;
  output [11:0]AIN8_value;
  output [11:0]AIN9_value;
  output w_valid;
  input w_ready;
  output r_ready;
  input r_valid;
  input [11:0]r_data;
  output [11:0]w_data;
endmodule
