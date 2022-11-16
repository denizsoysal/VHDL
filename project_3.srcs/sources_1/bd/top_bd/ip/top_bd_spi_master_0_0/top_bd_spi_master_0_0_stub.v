// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jun 16 11:20:04 2021
// Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_spi_master_0_0/top_bd_spi_master_0_0_stub.v
// Design      : top_bd_spi_master_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "spi_master,Vivado 2020.1" *)
module top_bd_spi_master_0_0(rstn, clk, w_valid, w_ready, r_ready, r_valid, 
  r_data, w_data, spi_miso, spi_mosi, spi_clk, spi_csn)
/* synthesis syn_black_box black_box_pad_pin="rstn,clk,w_valid,w_ready,r_ready,r_valid,r_data[31:0],w_data[31:0],spi_miso,spi_mosi,spi_clk,spi_csn" */;
  input rstn;
  input clk;
  input w_valid;
  output w_ready;
  input r_ready;
  output r_valid;
  output [31:0]r_data;
  input [31:0]w_data;
  input spi_miso;
  output spi_mosi;
  output spi_clk;
  output spi_csn;
endmodule
