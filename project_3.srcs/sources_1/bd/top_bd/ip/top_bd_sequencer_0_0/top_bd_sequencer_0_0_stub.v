// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Jun 22 13:53:11 2021
// Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/ICTBRD_last_version_3/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_sequencer_0_0/top_bd_sequencer_0_0_stub.v
// Design      : top_bd_sequencer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "sequencer,Vivado 2020.1" *)
module top_bd_sequencer_0_0(ok_if, pas_ok_if, value_result, ended, en_5v, 
  pg_5v, pg_1V0, pg_3V3, pg_1V8, pg_1V2, pg_vcore, pg_vdimm, pg_poreset, rstn, clk, clk_100M, en_led0, 
  en_led1, clk_slow, value_3V3, value_1V0, value_1V8, value_5V, value_VBAT, value_I_VMECPU, 
  value_VDIMM_VTT, value_VDIMM, value_1V2, value_VCORE, cnt_SEQ_1V0_TO_3V3_for_ILA, 
  cnt_SEQ_1V8_TO_1V2_for_ILA, cnt_SEQ_1V2_TO_VCORE_for_ILA, 
  cnt_SEQ_VCORE_TO_VDIMM_for_ILA, cnt_SEQ_3V3_TO_1V8_for_ILA, 
  cnt_SEQ_VDIMM_TO_PORESET_for_ILA, test_results, test_done, board_started, 
  seq_result_for_ILA, XTAL_RTC_OE, TST_CLK_S0, TST_CLK_S1, TST_CLK_S2, CLOCK_OUT, 
  cnt_b3_for_ILA, cnt_b4_for_ILA, cnt_b5_for_ILA, cnt_b6_for_ILA, cnt_b7_for_ILA, 
  cnt_b8_for_ILA, cnt_pgvdimm_to_poreset_for_ILA, cnt_poreset_to_hreset_for_ILA, 
  cnt_hreset_to_led_usr_for_ILA, cnt_led_usr_to_btn_reset_for_ILA, 
  cnt_pgvdimm_to_poreset_2_for_ILA, cnt_poreset_to_hreset_2_for_ILA, 
  cnt_hreset_to_led_usr_2_for_ILA, cnt_btn_reset_to_btn_reset_off_for_ILA, 
  sw_not_programmed, led_rst, led_usr, led_wtd, hreset, btn_rst_t, rst_done_ok, hreset_2_ok, 
  poreset_2_ok, btn_rst_ok, led_usr_ok, hreset_ok, poreset_ok, vdimm_ok, vdimm_2_ok)
/* synthesis syn_black_box black_box_pad_pin="ok_if,pas_ok_if,value_result,ended,en_5v,pg_5v,pg_1V0,pg_3V3,pg_1V8,pg_1V2,pg_vcore,pg_vdimm,pg_poreset,rstn,clk,clk_100M,en_led0,en_led1,clk_slow,value_3V3[11:0],value_1V0[11:0],value_1V8[11:0],value_5V[11:0],value_VBAT[11:0],value_I_VMECPU[11:0],value_VDIMM_VTT[11:0],value_VDIMM[11:0],value_1V2[11:0],value_VCORE[11:0],cnt_SEQ_1V0_TO_3V3_for_ILA[7:0],cnt_SEQ_1V8_TO_1V2_for_ILA[7:0],cnt_SEQ_1V2_TO_VCORE_for_ILA[7:0],cnt_SEQ_VCORE_TO_VDIMM_for_ILA[7:0],cnt_SEQ_3V3_TO_1V8_for_ILA[7:0],cnt_SEQ_VDIMM_TO_PORESET_for_ILA[7:0],test_results[24:0],test_done[24:0],board_started,seq_result_for_ILA[5:0],XTAL_RTC_OE,TST_CLK_S0,TST_CLK_S1,TST_CLK_S2,CLOCK_OUT,cnt_b3_for_ILA[64:0],cnt_b4_for_ILA[64:0],cnt_b5_for_ILA[64:0],cnt_b6_for_ILA[64:0],cnt_b7_for_ILA[64:0],cnt_b8_for_ILA[64:0],cnt_pgvdimm_to_poreset_for_ILA[64:0],cnt_poreset_to_hreset_for_ILA[64:0],cnt_hreset_to_led_usr_for_ILA[64:0],cnt_led_usr_to_btn_reset_for_ILA[64:0],cnt_pgvdimm_to_poreset_2_for_ILA[64:0],cnt_poreset_to_hreset_2_for_ILA[64:0],cnt_hreset_to_led_usr_2_for_ILA[64:0],cnt_btn_reset_to_btn_reset_off_for_ILA[64:0],sw_not_programmed,led_rst,led_usr,led_wtd,hreset,btn_rst_t,rst_done_ok,hreset_2_ok,poreset_2_ok,btn_rst_ok,led_usr_ok,hreset_ok,poreset_ok,vdimm_ok,vdimm_2_ok" */;
  output ok_if;
  output pas_ok_if;
  output value_result;
  output ended;
  input en_5v;
  input pg_5v;
  input pg_1V0;
  input pg_3V3;
  input pg_1V8;
  input pg_1V2;
  input pg_vcore;
  input pg_vdimm;
  input pg_poreset;
  input rstn;
  input clk;
  input clk_100M;
  output en_led0;
  output en_led1;
  output clk_slow;
  input [11:0]value_3V3;
  input [11:0]value_1V0;
  input [11:0]value_1V8;
  input [11:0]value_5V;
  input [11:0]value_VBAT;
  input [11:0]value_I_VMECPU;
  input [11:0]value_VDIMM_VTT;
  input [11:0]value_VDIMM;
  input [11:0]value_1V2;
  input [11:0]value_VCORE;
  output [7:0]cnt_SEQ_1V0_TO_3V3_for_ILA;
  output [7:0]cnt_SEQ_1V8_TO_1V2_for_ILA;
  output [7:0]cnt_SEQ_1V2_TO_VCORE_for_ILA;
  output [7:0]cnt_SEQ_VCORE_TO_VDIMM_for_ILA;
  output [7:0]cnt_SEQ_3V3_TO_1V8_for_ILA;
  output [7:0]cnt_SEQ_VDIMM_TO_PORESET_for_ILA;
  output [24:0]test_results;
  output [24:0]test_done;
  input board_started;
  output [5:0]seq_result_for_ILA;
  output XTAL_RTC_OE;
  output TST_CLK_S0;
  output TST_CLK_S1;
  output TST_CLK_S2;
  input CLOCK_OUT;
  output [64:0]cnt_b3_for_ILA;
  output [64:0]cnt_b4_for_ILA;
  output [64:0]cnt_b5_for_ILA;
  output [64:0]cnt_b6_for_ILA;
  output [64:0]cnt_b7_for_ILA;
  output [64:0]cnt_b8_for_ILA;
  output [64:0]cnt_pgvdimm_to_poreset_for_ILA;
  output [64:0]cnt_poreset_to_hreset_for_ILA;
  output [64:0]cnt_hreset_to_led_usr_for_ILA;
  output [64:0]cnt_led_usr_to_btn_reset_for_ILA;
  output [64:0]cnt_pgvdimm_to_poreset_2_for_ILA;
  output [64:0]cnt_poreset_to_hreset_2_for_ILA;
  output [64:0]cnt_hreset_to_led_usr_2_for_ILA;
  output [64:0]cnt_btn_reset_to_btn_reset_off_for_ILA;
  input sw_not_programmed;
  input led_rst;
  input led_usr;
  input led_wtd;
  input hreset;
  output btn_rst_t;
  output rst_done_ok;
  output hreset_2_ok;
  output poreset_2_ok;
  output btn_rst_ok;
  output led_usr_ok;
  output hreset_ok;
  output poreset_ok;
  output vdimm_ok;
  output vdimm_2_ok;
endmodule
