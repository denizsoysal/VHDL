// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jun 16 14:50:43 2021
// Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_power_management_0_0/top_bd_power_management_0_0_stub.v
// Design      : top_bd_power_management_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "power_management,Vivado 2020.1" *)
module top_bd_power_management_0_0(rstn, clk, value_5V, value_I_VMECPU, IOV_VMECPU, 
  board_started, PG_PWR_5V, EN_PWR_5V, start_btnn, testing_bit, ready_bit, shut_down)
/* synthesis syn_black_box black_box_pad_pin="rstn,clk,value_5V[11:0],value_I_VMECPU[11:0],IOV_VMECPU,board_started,PG_PWR_5V,EN_PWR_5V,start_btnn,testing_bit,ready_bit,shut_down" */;
  input rstn;
  input clk;
  input [11:0]value_5V;
  input [11:0]value_I_VMECPU;
  input IOV_VMECPU;
  output board_started;
  input PG_PWR_5V;
  output EN_PWR_5V;
  input start_btnn;
  output testing_bit;
  output ready_bit;
  output shut_down;
endmodule