-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:sequencer:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY top_bd_sequencer_0_0 IS
  PORT (
    ok_if : OUT STD_LOGIC;
    pas_ok_if : OUT STD_LOGIC;
    value_result : OUT STD_LOGIC;
    ended : OUT STD_LOGIC;
    en_5v : IN STD_LOGIC;
    pg_5v : IN STD_LOGIC;
    pg_1V0 : IN STD_LOGIC;
    pg_3V3 : IN STD_LOGIC;
    pg_1V8 : IN STD_LOGIC;
    pg_1V2 : IN STD_LOGIC;
    pg_vcore : IN STD_LOGIC;
    pg_vdimm : IN STD_LOGIC;
    pg_poreset : IN STD_LOGIC;
    rstn : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    clk_100M : IN STD_LOGIC;
    en_led0 : OUT STD_LOGIC;
    en_led1 : OUT STD_LOGIC;
    clk_slow : OUT STD_LOGIC;
    value_3V3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    value_1V0 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    value_1V8 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    value_5V : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    value_VBAT : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    value_I_VMECPU : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    value_VDIMM_VTT : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    value_VDIMM : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    value_1V2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    value_VCORE : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    cnt_SEQ_1V0_TO_3V3_for_ILA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cnt_SEQ_1V8_TO_1V2_for_ILA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cnt_SEQ_1V2_TO_VCORE_for_ILA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cnt_SEQ_VCORE_TO_VDIMM_for_ILA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cnt_SEQ_3V3_TO_1V8_for_ILA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cnt_SEQ_VDIMM_TO_PORESET_for_ILA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    test_results : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
    test_done : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
    board_started : IN STD_LOGIC;
    seq_result_for_ILA : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    XTAL_RTC_OE : OUT STD_LOGIC;
    TST_CLK_S0 : OUT STD_LOGIC;
    TST_CLK_S1 : OUT STD_LOGIC;
    TST_CLK_S2 : OUT STD_LOGIC;
    CLOCK_OUT : IN STD_LOGIC;
    cnt_b3_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    cnt_b4_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    cnt_b5_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    cnt_b6_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    cnt_b7_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    cnt_b8_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    cnt_pgvdimm_to_poreset_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    cnt_poreset_to_hreset_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    cnt_hreset_to_led_usr_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    cnt_led_usr_to_btn_reset_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    cnt_pgvdimm_to_poreset_2_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    cnt_poreset_to_hreset_2_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    cnt_hreset_to_led_usr_2_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    cnt_btn_reset_to_btn_reset_off_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    sw_not_programmed : IN STD_LOGIC;
    led_rst : IN STD_LOGIC;
    led_usr : IN STD_LOGIC;
    led_wtd : IN STD_LOGIC;
    hreset : IN STD_LOGIC;
    btn_rst_t : OUT STD_LOGIC;
    rst_done_ok : OUT STD_LOGIC;
    hreset_2_ok : OUT STD_LOGIC;
    poreset_2_ok : OUT STD_LOGIC;
    btn_rst_ok : OUT STD_LOGIC;
    led_usr_ok : OUT STD_LOGIC;
    hreset_ok : OUT STD_LOGIC;
    poreset_ok : OUT STD_LOGIC;
    vdimm_ok : OUT STD_LOGIC;
    vdimm_2_ok : OUT STD_LOGIC
  );
END top_bd_sequencer_0_0;

ARCHITECTURE top_bd_sequencer_0_0_arch OF top_bd_sequencer_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_bd_sequencer_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT sequencer IS
    GENERIC (
      C_DIVIDER : INTEGER;
      C_LENGTH : INTEGER;
      C_AIN_NUMBER : INTEGER;
      C_5V_MIN : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_5V_MAX : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_3V3_MIN : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_3V3_MAX : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_1V8_MIN : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_1V8_MAX : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_1V2_MIN : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_1V2_MAX : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_1V0_MIN : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_1V0_MAX : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_VBAT_MIN : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_VBAT_MAX : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_VCORE_MIN : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_VCORE_MAX : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_VDIMM_MIN : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_VDIMM_MAX : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_VDIMM_VTT_MIN : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_VDIMM_VTT_MAX : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_I_VMECPU_MIN : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_I_VMECPU_MAX : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_SEQ_1V0_TO_3V3 : INTEGER;
      C_SEQ_3V3_TO_1V8 : INTEGER;
      C_SEQ_1V8_TO_1V2 : INTEGER;
      C_SEQ_1V2_TO_VCORE : INTEGER;
      C_SEQ_VCORE_TO_VDIMM : INTEGER;
      C_SEQ_VDIMM_TO_PORESET : INTEGER;
      C_debounce_range : INTEGER
    );
    PORT (
      ok_if : OUT STD_LOGIC;
      pas_ok_if : OUT STD_LOGIC;
      value_result : OUT STD_LOGIC;
      ended : OUT STD_LOGIC;
      en_5v : IN STD_LOGIC;
      pg_5v : IN STD_LOGIC;
      pg_1V0 : IN STD_LOGIC;
      pg_3V3 : IN STD_LOGIC;
      pg_1V8 : IN STD_LOGIC;
      pg_1V2 : IN STD_LOGIC;
      pg_vcore : IN STD_LOGIC;
      pg_vdimm : IN STD_LOGIC;
      pg_poreset : IN STD_LOGIC;
      rstn : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      clk_100M : IN STD_LOGIC;
      en_led0 : OUT STD_LOGIC;
      en_led1 : OUT STD_LOGIC;
      clk_slow : OUT STD_LOGIC;
      value_3V3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      value_1V0 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      value_1V8 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      value_5V : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      value_VBAT : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      value_I_VMECPU : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      value_VDIMM_VTT : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      value_VDIMM : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      value_1V2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      value_VCORE : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      cnt_SEQ_1V0_TO_3V3_for_ILA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      cnt_SEQ_1V8_TO_1V2_for_ILA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      cnt_SEQ_1V2_TO_VCORE_for_ILA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      cnt_SEQ_VCORE_TO_VDIMM_for_ILA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      cnt_SEQ_3V3_TO_1V8_for_ILA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      cnt_SEQ_VDIMM_TO_PORESET_for_ILA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      test_results : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      test_done : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      board_started : IN STD_LOGIC;
      seq_result_for_ILA : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      XTAL_RTC_OE : OUT STD_LOGIC;
      TST_CLK_S0 : OUT STD_LOGIC;
      TST_CLK_S1 : OUT STD_LOGIC;
      TST_CLK_S2 : OUT STD_LOGIC;
      CLOCK_OUT : IN STD_LOGIC;
      cnt_b3_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
      cnt_b4_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
      cnt_b5_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
      cnt_b6_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
      cnt_b7_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
      cnt_b8_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
      cnt_pgvdimm_to_poreset_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
      cnt_poreset_to_hreset_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
      cnt_hreset_to_led_usr_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
      cnt_led_usr_to_btn_reset_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
      cnt_pgvdimm_to_poreset_2_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
      cnt_poreset_to_hreset_2_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
      cnt_hreset_to_led_usr_2_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
      cnt_btn_reset_to_btn_reset_off_for_ILA : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
      sw_not_programmed : IN STD_LOGIC;
      led_rst : IN STD_LOGIC;
      led_usr : IN STD_LOGIC;
      led_wtd : IN STD_LOGIC;
      hreset : IN STD_LOGIC;
      btn_rst_t : OUT STD_LOGIC;
      rst_done_ok : OUT STD_LOGIC;
      hreset_2_ok : OUT STD_LOGIC;
      poreset_2_ok : OUT STD_LOGIC;
      btn_rst_ok : OUT STD_LOGIC;
      led_usr_ok : OUT STD_LOGIC;
      hreset_ok : OUT STD_LOGIC;
      poreset_ok : OUT STD_LOGIC;
      vdimm_ok : OUT STD_LOGIC;
      vdimm_2_ok : OUT STD_LOGIC
    );
  END COMPONENT sequencer;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF top_bd_sequencer_0_0_arch: ARCHITECTURE IS "sequencer,Vivado 2020.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF top_bd_sequencer_0_0_arch : ARCHITECTURE IS "top_bd_sequencer_0_0,sequencer,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF top_bd_sequencer_0_0_arch: ARCHITECTURE IS "top_bd_sequencer_0_0,sequencer,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=sequencer,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,C_DIVIDER=200000,C_LENGTH=12,C_AIN_NUMBER=10,C_5V_MIN=0xBB7,C_5V_MAX=0xDAB,C_3V3_MIN=0xC3E,C_3V3_MAX=0xD88,C_1V8_MIN=0xD5B,C_1V8_MAX=0xEC3,C_1V2_MIN=0x8E7,C_1V2_MAX=0x9D7,C_1V0_MIN=0x76B,C_1V0_MAX=0x833,C_VBAT_MIN=0x3E7,C_VBAT_MAX=0xD03,C_VCORE_MIN=0x76B,C_VCORE_MAX=0x833,C_VDIMM_MIN=0xA04,C_VDIMM_MAX=0" & 
"xB12,C_VDIMM_VTT_MIN=0x502,C_VDIMM_VTT_MAX=0x589,C_I_VMECPU_MIN=0x7CF,C_I_VMECPU_MAX=0xE0F,C_SEQ_1V0_TO_3V3=10,C_SEQ_3V3_TO_1V8=10,C_SEQ_1V8_TO_1V2=10,C_SEQ_1V2_TO_VCORE=10,C_SEQ_VCORE_TO_VDIMM=10,C_SEQ_VDIMM_TO_PORESET=4040,C_debounce_range=5}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF top_bd_sequencer_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF led_rst: SIGNAL IS "XIL_INTERFACENAME led_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF led_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 led_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLOCK_OUT: SIGNAL IS "XIL_INTERFACENAME CLOCK_OUT, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN top_bd_CLOCK_OUT_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CLOCK_OUT: SIGNAL IS "xilinx.com:signal:clock:1.0 CLOCK_OUT CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rstn: SIGNAL IS "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rstn: SIGNAL IS "xilinx.com:signal:reset:1.0 rstn RST";
BEGIN
  U0 : sequencer
    GENERIC MAP (
      C_DIVIDER => 200000,
      C_LENGTH => 12,
      C_AIN_NUMBER => 10,
      C_5V_MIN => X"BB7",
      C_5V_MAX => X"DAB",
      C_3V3_MIN => X"C3E",
      C_3V3_MAX => X"D88",
      C_1V8_MIN => X"D5B",
      C_1V8_MAX => X"EC3",
      C_1V2_MIN => X"8E7",
      C_1V2_MAX => X"9D7",
      C_1V0_MIN => X"76B",
      C_1V0_MAX => X"833",
      C_VBAT_MIN => X"3E7",
      C_VBAT_MAX => X"D03",
      C_VCORE_MIN => X"76B",
      C_VCORE_MAX => X"833",
      C_VDIMM_MIN => X"A04",
      C_VDIMM_MAX => X"B12",
      C_VDIMM_VTT_MIN => X"502",
      C_VDIMM_VTT_MAX => X"589",
      C_I_VMECPU_MIN => X"7CF",
      C_I_VMECPU_MAX => X"E0F",
      C_SEQ_1V0_TO_3V3 => 10,
      C_SEQ_3V3_TO_1V8 => 10,
      C_SEQ_1V8_TO_1V2 => 10,
      C_SEQ_1V2_TO_VCORE => 10,
      C_SEQ_VCORE_TO_VDIMM => 10,
      C_SEQ_VDIMM_TO_PORESET => 4040,
      C_debounce_range => 5
    )
    PORT MAP (
      ok_if => ok_if,
      pas_ok_if => pas_ok_if,
      value_result => value_result,
      ended => ended,
      en_5v => en_5v,
      pg_5v => pg_5v,
      pg_1V0 => pg_1V0,
      pg_3V3 => pg_3V3,
      pg_1V8 => pg_1V8,
      pg_1V2 => pg_1V2,
      pg_vcore => pg_vcore,
      pg_vdimm => pg_vdimm,
      pg_poreset => pg_poreset,
      rstn => rstn,
      clk => clk,
      clk_100M => clk_100M,
      en_led0 => en_led0,
      en_led1 => en_led1,
      clk_slow => clk_slow,
      value_3V3 => value_3V3,
      value_1V0 => value_1V0,
      value_1V8 => value_1V8,
      value_5V => value_5V,
      value_VBAT => value_VBAT,
      value_I_VMECPU => value_I_VMECPU,
      value_VDIMM_VTT => value_VDIMM_VTT,
      value_VDIMM => value_VDIMM,
      value_1V2 => value_1V2,
      value_VCORE => value_VCORE,
      cnt_SEQ_1V0_TO_3V3_for_ILA => cnt_SEQ_1V0_TO_3V3_for_ILA,
      cnt_SEQ_1V8_TO_1V2_for_ILA => cnt_SEQ_1V8_TO_1V2_for_ILA,
      cnt_SEQ_1V2_TO_VCORE_for_ILA => cnt_SEQ_1V2_TO_VCORE_for_ILA,
      cnt_SEQ_VCORE_TO_VDIMM_for_ILA => cnt_SEQ_VCORE_TO_VDIMM_for_ILA,
      cnt_SEQ_3V3_TO_1V8_for_ILA => cnt_SEQ_3V3_TO_1V8_for_ILA,
      cnt_SEQ_VDIMM_TO_PORESET_for_ILA => cnt_SEQ_VDIMM_TO_PORESET_for_ILA,
      test_results => test_results,
      test_done => test_done,
      board_started => board_started,
      seq_result_for_ILA => seq_result_for_ILA,
      XTAL_RTC_OE => XTAL_RTC_OE,
      TST_CLK_S0 => TST_CLK_S0,
      TST_CLK_S1 => TST_CLK_S1,
      TST_CLK_S2 => TST_CLK_S2,
      CLOCK_OUT => CLOCK_OUT,
      cnt_b3_for_ILA => cnt_b3_for_ILA,
      cnt_b4_for_ILA => cnt_b4_for_ILA,
      cnt_b5_for_ILA => cnt_b5_for_ILA,
      cnt_b6_for_ILA => cnt_b6_for_ILA,
      cnt_b7_for_ILA => cnt_b7_for_ILA,
      cnt_b8_for_ILA => cnt_b8_for_ILA,
      cnt_pgvdimm_to_poreset_for_ILA => cnt_pgvdimm_to_poreset_for_ILA,
      cnt_poreset_to_hreset_for_ILA => cnt_poreset_to_hreset_for_ILA,
      cnt_hreset_to_led_usr_for_ILA => cnt_hreset_to_led_usr_for_ILA,
      cnt_led_usr_to_btn_reset_for_ILA => cnt_led_usr_to_btn_reset_for_ILA,
      cnt_pgvdimm_to_poreset_2_for_ILA => cnt_pgvdimm_to_poreset_2_for_ILA,
      cnt_poreset_to_hreset_2_for_ILA => cnt_poreset_to_hreset_2_for_ILA,
      cnt_hreset_to_led_usr_2_for_ILA => cnt_hreset_to_led_usr_2_for_ILA,
      cnt_btn_reset_to_btn_reset_off_for_ILA => cnt_btn_reset_to_btn_reset_off_for_ILA,
      sw_not_programmed => sw_not_programmed,
      led_rst => led_rst,
      led_usr => led_usr,
      led_wtd => led_wtd,
      hreset => hreset,
      btn_rst_t => btn_rst_t,
      rst_done_ok => rst_done_ok,
      hreset_2_ok => hreset_2_ok,
      poreset_2_ok => poreset_2_ok,
      btn_rst_ok => btn_rst_ok,
      led_usr_ok => led_usr_ok,
      hreset_ok => hreset_ok,
      poreset_ok => poreset_ok,
      vdimm_ok => vdimm_ok,
      vdimm_2_ok => vdimm_2_ok
    );
END top_bd_sequencer_0_0_arch;
