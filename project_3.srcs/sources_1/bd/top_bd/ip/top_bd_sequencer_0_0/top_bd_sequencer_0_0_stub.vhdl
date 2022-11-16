-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Jun 22 13:53:11 2021
-- Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/ICTBRD_last_version_3/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_sequencer_0_0/top_bd_sequencer_0_0_stub.vhdl
-- Design      : top_bd_sequencer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_bd_sequencer_0_0 is
  Port ( 
    ok_if : out STD_LOGIC;
    pas_ok_if : out STD_LOGIC;
    value_result : out STD_LOGIC;
    ended : out STD_LOGIC;
    en_5v : in STD_LOGIC;
    pg_5v : in STD_LOGIC;
    pg_1V0 : in STD_LOGIC;
    pg_3V3 : in STD_LOGIC;
    pg_1V8 : in STD_LOGIC;
    pg_1V2 : in STD_LOGIC;
    pg_vcore : in STD_LOGIC;
    pg_vdimm : in STD_LOGIC;
    pg_poreset : in STD_LOGIC;
    rstn : in STD_LOGIC;
    clk : in STD_LOGIC;
    clk_100M : in STD_LOGIC;
    en_led0 : out STD_LOGIC;
    en_led1 : out STD_LOGIC;
    clk_slow : out STD_LOGIC;
    value_3V3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    value_1V0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    value_1V8 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    value_5V : in STD_LOGIC_VECTOR ( 11 downto 0 );
    value_VBAT : in STD_LOGIC_VECTOR ( 11 downto 0 );
    value_I_VMECPU : in STD_LOGIC_VECTOR ( 11 downto 0 );
    value_VDIMM_VTT : in STD_LOGIC_VECTOR ( 11 downto 0 );
    value_VDIMM : in STD_LOGIC_VECTOR ( 11 downto 0 );
    value_1V2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    value_VCORE : in STD_LOGIC_VECTOR ( 11 downto 0 );
    cnt_SEQ_1V0_TO_3V3_for_ILA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cnt_SEQ_1V8_TO_1V2_for_ILA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cnt_SEQ_1V2_TO_VCORE_for_ILA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cnt_SEQ_VCORE_TO_VDIMM_for_ILA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cnt_SEQ_3V3_TO_1V8_for_ILA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cnt_SEQ_VDIMM_TO_PORESET_for_ILA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    test_results : out STD_LOGIC_VECTOR ( 24 downto 0 );
    test_done : out STD_LOGIC_VECTOR ( 24 downto 0 );
    board_started : in STD_LOGIC;
    seq_result_for_ILA : out STD_LOGIC_VECTOR ( 5 downto 0 );
    XTAL_RTC_OE : out STD_LOGIC;
    TST_CLK_S0 : out STD_LOGIC;
    TST_CLK_S1 : out STD_LOGIC;
    TST_CLK_S2 : out STD_LOGIC;
    CLOCK_OUT : in STD_LOGIC;
    cnt_b3_for_ILA : out STD_LOGIC_VECTOR ( 64 downto 0 );
    cnt_b4_for_ILA : out STD_LOGIC_VECTOR ( 64 downto 0 );
    cnt_b5_for_ILA : out STD_LOGIC_VECTOR ( 64 downto 0 );
    cnt_b6_for_ILA : out STD_LOGIC_VECTOR ( 64 downto 0 );
    cnt_b7_for_ILA : out STD_LOGIC_VECTOR ( 64 downto 0 );
    cnt_b8_for_ILA : out STD_LOGIC_VECTOR ( 64 downto 0 );
    cnt_pgvdimm_to_poreset_for_ILA : out STD_LOGIC_VECTOR ( 64 downto 0 );
    cnt_poreset_to_hreset_for_ILA : out STD_LOGIC_VECTOR ( 64 downto 0 );
    cnt_hreset_to_led_usr_for_ILA : out STD_LOGIC_VECTOR ( 64 downto 0 );
    cnt_led_usr_to_btn_reset_for_ILA : out STD_LOGIC_VECTOR ( 64 downto 0 );
    cnt_pgvdimm_to_poreset_2_for_ILA : out STD_LOGIC_VECTOR ( 64 downto 0 );
    cnt_poreset_to_hreset_2_for_ILA : out STD_LOGIC_VECTOR ( 64 downto 0 );
    cnt_hreset_to_led_usr_2_for_ILA : out STD_LOGIC_VECTOR ( 64 downto 0 );
    cnt_btn_reset_to_btn_reset_off_for_ILA : out STD_LOGIC_VECTOR ( 64 downto 0 );
    sw_not_programmed : in STD_LOGIC;
    led_rst : in STD_LOGIC;
    led_usr : in STD_LOGIC;
    led_wtd : in STD_LOGIC;
    hreset : in STD_LOGIC;
    btn_rst_t : out STD_LOGIC;
    rst_done_ok : out STD_LOGIC;
    hreset_2_ok : out STD_LOGIC;
    poreset_2_ok : out STD_LOGIC;
    btn_rst_ok : out STD_LOGIC;
    led_usr_ok : out STD_LOGIC;
    hreset_ok : out STD_LOGIC;
    poreset_ok : out STD_LOGIC;
    vdimm_ok : out STD_LOGIC;
    vdimm_2_ok : out STD_LOGIC
  );

end top_bd_sequencer_0_0;

architecture stub of top_bd_sequencer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ok_if,pas_ok_if,value_result,ended,en_5v,pg_5v,pg_1V0,pg_3V3,pg_1V8,pg_1V2,pg_vcore,pg_vdimm,pg_poreset,rstn,clk,clk_100M,en_led0,en_led1,clk_slow,value_3V3[11:0],value_1V0[11:0],value_1V8[11:0],value_5V[11:0],value_VBAT[11:0],value_I_VMECPU[11:0],value_VDIMM_VTT[11:0],value_VDIMM[11:0],value_1V2[11:0],value_VCORE[11:0],cnt_SEQ_1V0_TO_3V3_for_ILA[7:0],cnt_SEQ_1V8_TO_1V2_for_ILA[7:0],cnt_SEQ_1V2_TO_VCORE_for_ILA[7:0],cnt_SEQ_VCORE_TO_VDIMM_for_ILA[7:0],cnt_SEQ_3V3_TO_1V8_for_ILA[7:0],cnt_SEQ_VDIMM_TO_PORESET_for_ILA[7:0],test_results[24:0],test_done[24:0],board_started,seq_result_for_ILA[5:0],XTAL_RTC_OE,TST_CLK_S0,TST_CLK_S1,TST_CLK_S2,CLOCK_OUT,cnt_b3_for_ILA[64:0],cnt_b4_for_ILA[64:0],cnt_b5_for_ILA[64:0],cnt_b6_for_ILA[64:0],cnt_b7_for_ILA[64:0],cnt_b8_for_ILA[64:0],cnt_pgvdimm_to_poreset_for_ILA[64:0],cnt_poreset_to_hreset_for_ILA[64:0],cnt_hreset_to_led_usr_for_ILA[64:0],cnt_led_usr_to_btn_reset_for_ILA[64:0],cnt_pgvdimm_to_poreset_2_for_ILA[64:0],cnt_poreset_to_hreset_2_for_ILA[64:0],cnt_hreset_to_led_usr_2_for_ILA[64:0],cnt_btn_reset_to_btn_reset_off_for_ILA[64:0],sw_not_programmed,led_rst,led_usr,led_wtd,hreset,btn_rst_t,rst_done_ok,hreset_2_ok,poreset_2_ok,btn_rst_ok,led_usr_ok,hreset_ok,poreset_ok,vdimm_ok,vdimm_2_ok";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "sequencer,Vivado 2020.1";
begin
end;
