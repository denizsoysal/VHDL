--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Tue Jun 22 13:52:04 2021
--Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
--Command     : generate_target top_bd.bd
--Design      : top_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd is
  port (
    ADC_eoc : in STD_LOGIC;
    CLOCK_OUT_0 : in STD_LOGIC;
    EN_PWR_5V : out STD_LOGIC;
    IOV_VMECPU_0 : in STD_LOGIC;
    PG_PWR_5V_0 : in STD_LOGIC;
    TST_CLK_S0_0 : out STD_LOGIC;
    TST_CLK_S1_0 : out STD_LOGIC;
    TST_CLK_S2_0 : out STD_LOGIC;
    XTAL_RTC_OE_0 : out STD_LOGIC;
    btn_rst_t_0 : out STD_LOGIC;
    clk_ref : in STD_LOGIC;
    en_5v : in STD_LOGIC;
    en_led0 : out STD_LOGIC;
    en_led1 : out STD_LOGIC;
    hreset_0 : in STD_LOGIC;
    led_rst_0 : in STD_LOGIC;
    led_usr_0 : in STD_LOGIC;
    led_wtd_0 : in STD_LOGIC;
    pg_1V0 : in STD_LOGIC;
    pg_1V2 : in STD_LOGIC;
    pg_1V8 : in STD_LOGIC;
    pg_3V3 : in STD_LOGIC;
    pg_5v : in STD_LOGIC;
    pg_poreset : in STD_LOGIC;
    pg_vcore : in STD_LOGIC;
    pg_vdimm : in STD_LOGIC;
    rstn : in STD_LOGIC;
    spi_clk : out STD_LOGIC;
    spi_clk_0 : out STD_LOGIC;
    spi_clk_1 : out STD_LOGIC;
    spi_csn : out STD_LOGIC;
    spi_csn_0 : out STD_LOGIC;
    spi_csn_1 : out STD_LOGIC;
    spi_miso : in STD_LOGIC;
    spi_miso_0 : in STD_LOGIC;
    spi_miso_1 : in STD_LOGIC;
    spi_mosi : out STD_LOGIC;
    spi_mosi_0 : out STD_LOGIC;
    spi_mosi_1 : out STD_LOGIC;
    start_btnn_0 : in STD_LOGIC;
    sw_not_programmed_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of top_bd : entity is "top_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=12,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=10,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of top_bd : entity is "top_bd.hwdef";
end top_bd;

architecture STRUCTURE of top_bd is
  component top_bd_spi_master_0_0 is
  port (
    rstn : in STD_LOGIC;
    clk : in STD_LOGIC;
    w_valid : in STD_LOGIC;
    w_ready : out STD_LOGIC;
    r_ready : in STD_LOGIC;
    r_valid : out STD_LOGIC;
    r_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    w_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    spi_miso : in STD_LOGIC;
    spi_mosi : out STD_LOGIC;
    spi_clk : out STD_LOGIC;
    spi_csn : out STD_LOGIC
  );
  end component top_bd_spi_master_0_0;
  component top_bd_spi_master_1_0 is
  port (
    rstn : in STD_LOGIC;
    clk : in STD_LOGIC;
    w_valid : in STD_LOGIC;
    w_ready : out STD_LOGIC;
    r_ready : in STD_LOGIC;
    r_valid : out STD_LOGIC;
    r_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    w_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    spi_miso : in STD_LOGIC;
    spi_mosi : out STD_LOGIC;
    spi_clk : out STD_LOGIC;
    spi_csn : out STD_LOGIC
  );
  end component top_bd_spi_master_1_0;
  component top_bd_spi_master_2_0 is
  port (
    rstn : in STD_LOGIC;
    clk : in STD_LOGIC;
    w_valid : in STD_LOGIC;
    w_ready : out STD_LOGIC;
    r_ready : in STD_LOGIC;
    r_valid : out STD_LOGIC;
    r_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    w_data : in STD_LOGIC_VECTOR ( 11 downto 0 );
    spi_miso : in STD_LOGIC;
    spi_mosi : out STD_LOGIC;
    spi_clk : out STD_LOGIC;
    spi_csn : out STD_LOGIC
  );
  end component top_bd_spi_master_2_0;
  component top_bd_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component top_bd_clk_wiz_0_0;
  component top_bd_ctrl_io_exp_0_0 is
  port (
    rstn : in STD_LOGIC;
    clk : in STD_LOGIC;
    leds_state : in STD_LOGIC_VECTOR ( 15 downto 0 );
    w_valid : out STD_LOGIC;
    w_ready : in STD_LOGIC;
    r_ready : out STD_LOGIC;
    r_valid : in STD_LOGIC;
    r_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    w_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_bd_ctrl_io_exp_0_0;
  component top_bd_ctrl_io_exp_1_0 is
  port (
    rstn : in STD_LOGIC;
    clk : in STD_LOGIC;
    leds_state : in STD_LOGIC_VECTOR ( 15 downto 0 );
    w_valid : out STD_LOGIC;
    w_ready : in STD_LOGIC;
    r_ready : out STD_LOGIC;
    r_valid : in STD_LOGIC;
    r_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    w_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_bd_ctrl_io_exp_1_0;
  component top_bd_ctrl_adc_0_0 is
  port (
    rstn : in STD_LOGIC;
    clk : in STD_LOGIC;
    ADC_eoc : in STD_LOGIC;
    AIN0_value : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AIN1_value : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AIN2_value : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AIN3_value : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AIN4_value : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AIN5_value : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AIN6_value : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AIN7_value : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AIN8_value : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AIN9_value : out STD_LOGIC_VECTOR ( 11 downto 0 );
    w_valid : out STD_LOGIC;
    w_ready : in STD_LOGIC;
    r_ready : out STD_LOGIC;
    r_valid : in STD_LOGIC;
    r_data : in STD_LOGIC_VECTOR ( 11 downto 0 );
    w_data : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component top_bd_ctrl_adc_0_0;
  component top_bd_clk_div_0_0 is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  end component top_bd_clk_div_0_0;
  component top_bd_system_ila_0_5 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe25 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_bd_system_ila_0_5;
  component top_bd_leds_display_0_0 is
  port (
    rstn : in STD_LOGIC;
    clk : in STD_LOGIC;
    test_done : in STD_LOGIC_VECTOR ( 24 downto 0 );
    test_results : in STD_LOGIC_VECTOR ( 24 downto 0 );
    clk_slow : in STD_LOGIC;
    io_exp_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    io_exp_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    board_started : in STD_LOGIC;
    sw_not_programmed : in STD_LOGIC;
    shut_down : in STD_LOGIC
  );
  end component top_bd_leds_display_0_0;
  component top_bd_power_management_0_0 is
  port (
    rstn : in STD_LOGIC;
    clk : in STD_LOGIC;
    value_5V : in STD_LOGIC_VECTOR ( 11 downto 0 );
    value_I_VMECPU : in STD_LOGIC_VECTOR ( 11 downto 0 );
    IOV_VMECPU : in STD_LOGIC;
    board_started : out STD_LOGIC;
    PG_PWR_5V : in STD_LOGIC;
    EN_PWR_5V : out STD_LOGIC;
    start_btnn : in STD_LOGIC;
    testing_bit : out STD_LOGIC;
    ready_bit : out STD_LOGIC;
    shut_down : out STD_LOGIC
  );
  end component top_bd_power_management_0_0;
  component top_bd_sequencer_0_0 is
  port (
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
  end component top_bd_sequencer_0_0;
  signal ADC_eoc_0_1 : STD_LOGIC;
  signal CLOCK_OUT_0_1 : STD_LOGIC;
  signal IOV_VMECPU_0_1 : STD_LOGIC;
  signal PG_PWR_5V_0_1 : STD_LOGIC;
  signal clk_div_0_clk_out : STD_LOGIC;
  signal clk_ref_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal ctrl_adc_0_AIN0_value : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ctrl_adc_0_AIN1_value : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ctrl_adc_0_AIN2_value : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ctrl_adc_0_AIN3_value : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ctrl_adc_0_AIN4_value : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ctrl_adc_0_AIN5_value : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ctrl_adc_0_AIN6_value : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ctrl_adc_0_AIN7_value : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ctrl_adc_0_AIN8_value : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ctrl_adc_0_AIN9_value : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ctrl_adc_0_r_ready : STD_LOGIC;
  signal ctrl_adc_0_w_data : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ctrl_adc_0_w_valid : STD_LOGIC;
  signal ctrl_io_exp_0_en_led0 : STD_LOGIC;
  signal ctrl_io_exp_0_en_led1 : STD_LOGIC;
  signal ctrl_io_exp_0_r_ready : STD_LOGIC;
  signal ctrl_io_exp_0_w_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ctrl_io_exp_0_w_valid : STD_LOGIC;
  signal ctrl_io_exp_1_r_ready : STD_LOGIC;
  signal ctrl_io_exp_1_w_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ctrl_io_exp_1_w_valid : STD_LOGIC;
  signal en_5v_0_1 : STD_LOGIC;
  signal hreset_0_1 : STD_LOGIC;
  signal led_rst_0_1 : STD_LOGIC;
  signal led_usr_0_1 : STD_LOGIC;
  signal led_wtd_0_1 : STD_LOGIC;
  signal leds_display_0_io_exp_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal leds_display_0_io_exp_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pg_1V0_0_1 : STD_LOGIC;
  signal pg_1V2_0_1 : STD_LOGIC;
  signal pg_1V8_0_1 : STD_LOGIC;
  signal pg_3V3_0_1 : STD_LOGIC;
  signal pg_5v_0_1 : STD_LOGIC;
  signal pg_poreset_0_1 : STD_LOGIC;
  signal pg_vcore_0_1 : STD_LOGIC;
  signal pg_vdimm_0_1 : STD_LOGIC;
  signal power_management_0_EN_PWR_5V : STD_LOGIC;
  signal power_management_0_board_started : STD_LOGIC;
  signal power_management_0_shut_down : STD_LOGIC;
  signal rstn_0_1 : STD_LOGIC;
  signal sequencer_0_TST_CLK_S0 : STD_LOGIC;
  signal sequencer_0_TST_CLK_S1 : STD_LOGIC;
  signal sequencer_0_TST_CLK_S2 : STD_LOGIC;
  signal sequencer_0_XTAL_RTC_OE : STD_LOGIC;
  signal sequencer_0_btn_rst_ok : STD_LOGIC;
  signal sequencer_0_btn_rst_t : STD_LOGIC;
  signal sequencer_0_clk_slow : STD_LOGIC;
  signal sequencer_0_cnt_b4_for_ILA : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal sequencer_0_cnt_btn_reset_to_btn_reset_off_for_ILA : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal sequencer_0_cnt_hreset_to_led_usr_2_for_ILA : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal sequencer_0_cnt_hreset_to_led_usr_for_ILA : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal sequencer_0_cnt_led_usr_to_btn_reset_for_ILA : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal sequencer_0_cnt_pgvdimm_to_poreset_2_for_ILA : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal sequencer_0_cnt_pgvdimm_to_poreset_for_ILA : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal sequencer_0_cnt_poreset_to_hreset_2_for_ILA : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal sequencer_0_cnt_poreset_to_hreset_for_ILA : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal sequencer_0_hreset_2_ok : STD_LOGIC;
  signal sequencer_0_hreset_ok : STD_LOGIC;
  signal sequencer_0_led_usr_ok : STD_LOGIC;
  signal sequencer_0_poreset_2_ok : STD_LOGIC;
  signal sequencer_0_poreset_ok : STD_LOGIC;
  signal sequencer_0_rst_done_ok : STD_LOGIC;
  signal sequencer_0_test_done : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal sequencer_0_test_results : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal spi_master_0_r_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal spi_master_0_r_valid : STD_LOGIC;
  signal spi_master_0_spi_clk : STD_LOGIC;
  signal spi_master_0_spi_csn : STD_LOGIC;
  signal spi_master_0_spi_mosi : STD_LOGIC;
  signal spi_master_0_w_ready : STD_LOGIC;
  signal spi_master_1_r_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal spi_master_1_r_valid : STD_LOGIC;
  signal spi_master_1_spi_clk : STD_LOGIC;
  signal spi_master_1_spi_csn : STD_LOGIC;
  signal spi_master_1_spi_mosi : STD_LOGIC;
  signal spi_master_1_w_ready : STD_LOGIC;
  signal spi_master_2_r_data : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal spi_master_2_r_valid : STD_LOGIC;
  signal spi_master_2_spi_clk : STD_LOGIC;
  signal spi_master_2_spi_csn : STD_LOGIC;
  signal spi_master_2_spi_mosi : STD_LOGIC;
  signal spi_master_2_w_ready : STD_LOGIC;
  signal spi_miso_0_1 : STD_LOGIC;
  signal spi_miso_0_2 : STD_LOGIC;
  signal spi_miso_2 : STD_LOGIC;
  signal start_btnn_0_1 : STD_LOGIC;
  signal sw_not_programmed_0_1 : STD_LOGIC;
  signal NLW_power_management_0_ready_bit_UNCONNECTED : STD_LOGIC;
  signal NLW_power_management_0_testing_bit_UNCONNECTED : STD_LOGIC;
  signal NLW_sequencer_0_ended_UNCONNECTED : STD_LOGIC;
  signal NLW_sequencer_0_ok_if_UNCONNECTED : STD_LOGIC;
  signal NLW_sequencer_0_pas_ok_if_UNCONNECTED : STD_LOGIC;
  signal NLW_sequencer_0_value_result_UNCONNECTED : STD_LOGIC;
  signal NLW_sequencer_0_vdimm_2_ok_UNCONNECTED : STD_LOGIC;
  signal NLW_sequencer_0_vdimm_ok_UNCONNECTED : STD_LOGIC;
  signal NLW_sequencer_0_cnt_SEQ_1V0_TO_3V3_for_ILA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_sequencer_0_cnt_SEQ_1V2_TO_VCORE_for_ILA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_sequencer_0_cnt_SEQ_1V8_TO_1V2_for_ILA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_sequencer_0_cnt_SEQ_3V3_TO_1V8_for_ILA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_sequencer_0_cnt_SEQ_VCORE_TO_VDIMM_for_ILA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_sequencer_0_cnt_SEQ_VDIMM_TO_PORESET_for_ILA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_sequencer_0_cnt_b3_for_ILA_UNCONNECTED : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal NLW_sequencer_0_cnt_b5_for_ILA_UNCONNECTED : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal NLW_sequencer_0_cnt_b6_for_ILA_UNCONNECTED : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal NLW_sequencer_0_cnt_b7_for_ILA_UNCONNECTED : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal NLW_sequencer_0_cnt_b8_for_ILA_UNCONNECTED : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal NLW_sequencer_0_seq_result_for_ILA_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLOCK_OUT_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCK_OUT_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLOCK_OUT_0 : signal is "XIL_INTERFACENAME CLK.CLOCK_OUT_0, CLK_DOMAIN top_bd_CLOCK_OUT_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of clk_ref : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_REF CLK";
  attribute X_INTERFACE_PARAMETER of clk_ref : signal is "XIL_INTERFACENAME CLK.CLK_REF, CLK_DOMAIN top_bd_clk_ref, FREQ_HZ 20000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of led_rst_0 : signal is "xilinx.com:signal:reset:1.0 RST.LED_RST_0 RST";
  attribute X_INTERFACE_PARAMETER of led_rst_0 : signal is "XIL_INTERFACENAME RST.LED_RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 RST.RSTN RST";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME RST.RSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of spi_clk : signal is "xilinx.com:signal:clock:1.0 CLK.SPI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of spi_clk : signal is "XIL_INTERFACENAME CLK.SPI_CLK, CLK_DOMAIN top_bd_spi_master_0_0_spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of spi_clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.SPI_CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER of spi_clk_0 : signal is "XIL_INTERFACENAME CLK.SPI_CLK_0, CLK_DOMAIN top_bd_spi_master_2_0_spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of spi_clk_1 : signal is "xilinx.com:signal:clock:1.0 CLK.SPI_CLK_1 CLK";
  attribute X_INTERFACE_PARAMETER of spi_clk_1 : signal is "XIL_INTERFACENAME CLK.SPI_CLK_1, CLK_DOMAIN top_bd_spi_master_1_0_spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
begin
  ADC_eoc_0_1 <= ADC_eoc;
  CLOCK_OUT_0_1 <= CLOCK_OUT_0;
  EN_PWR_5V <= power_management_0_EN_PWR_5V;
  IOV_VMECPU_0_1 <= IOV_VMECPU_0;
  PG_PWR_5V_0_1 <= PG_PWR_5V_0;
  TST_CLK_S0_0 <= sequencer_0_TST_CLK_S0;
  TST_CLK_S1_0 <= sequencer_0_TST_CLK_S1;
  TST_CLK_S2_0 <= sequencer_0_TST_CLK_S2;
  XTAL_RTC_OE_0 <= sequencer_0_XTAL_RTC_OE;
  btn_rst_t_0 <= sequencer_0_btn_rst_t;
  clk_ref_1 <= clk_ref;
  en_5v_0_1 <= en_5v;
  en_led0 <= ctrl_io_exp_0_en_led0;
  en_led1 <= ctrl_io_exp_0_en_led1;
  hreset_0_1 <= hreset_0;
  led_rst_0_1 <= led_rst_0;
  led_usr_0_1 <= led_usr_0;
  led_wtd_0_1 <= led_wtd_0;
  pg_1V0_0_1 <= pg_1V0;
  pg_1V2_0_1 <= pg_1V2;
  pg_1V8_0_1 <= pg_1V8;
  pg_3V3_0_1 <= pg_3V3;
  pg_5v_0_1 <= pg_5v;
  pg_poreset_0_1 <= pg_poreset;
  pg_vcore_0_1 <= pg_vcore;
  pg_vdimm_0_1 <= pg_vdimm;
  rstn_0_1 <= rstn;
  spi_clk <= spi_master_0_spi_clk;
  spi_clk_0 <= spi_master_2_spi_clk;
  spi_clk_1 <= spi_master_1_spi_clk;
  spi_csn <= spi_master_0_spi_csn;
  spi_csn_0 <= spi_master_2_spi_csn;
  spi_csn_1 <= spi_master_1_spi_csn;
  spi_miso_0_1 <= spi_miso_1;
  spi_miso_0_2 <= spi_miso_0;
  spi_miso_2 <= spi_miso;
  spi_mosi <= spi_master_0_spi_mosi;
  spi_mosi_0 <= spi_master_2_spi_mosi;
  spi_mosi_1 <= spi_master_1_spi_mosi;
  start_btnn_0_1 <= start_btnn_0;
  sw_not_programmed_0_1 <= sw_not_programmed_0;
clk_div_0: component top_bd_clk_div_0_0
     port map (
      clk_in => clk_ref_1,
      clk_out => clk_div_0_clk_out
    );
clk_wiz_0: component top_bd_clk_wiz_0_0
     port map (
      clk_in1 => clk_ref_1,
      clk_out1 => clk_wiz_0_clk_out1
    );
ctrl_adc_0: component top_bd_ctrl_adc_0_0
     port map (
      ADC_eoc => ADC_eoc_0_1,
      AIN0_value(11 downto 0) => ctrl_adc_0_AIN0_value(11 downto 0),
      AIN1_value(11 downto 0) => ctrl_adc_0_AIN1_value(11 downto 0),
      AIN2_value(11 downto 0) => ctrl_adc_0_AIN2_value(11 downto 0),
      AIN3_value(11 downto 0) => ctrl_adc_0_AIN3_value(11 downto 0),
      AIN4_value(11 downto 0) => ctrl_adc_0_AIN4_value(11 downto 0),
      AIN5_value(11 downto 0) => ctrl_adc_0_AIN5_value(11 downto 0),
      AIN6_value(11 downto 0) => ctrl_adc_0_AIN6_value(11 downto 0),
      AIN7_value(11 downto 0) => ctrl_adc_0_AIN7_value(11 downto 0),
      AIN8_value(11 downto 0) => ctrl_adc_0_AIN8_value(11 downto 0),
      AIN9_value(11 downto 0) => ctrl_adc_0_AIN9_value(11 downto 0),
      clk => clk_div_0_clk_out,
      r_data(11 downto 0) => spi_master_2_r_data(11 downto 0),
      r_ready => ctrl_adc_0_r_ready,
      r_valid => spi_master_2_r_valid,
      rstn => rstn_0_1,
      w_data(11 downto 0) => ctrl_adc_0_w_data(11 downto 0),
      w_ready => spi_master_2_w_ready,
      w_valid => ctrl_adc_0_w_valid
    );
ctrl_io_exp_0: component top_bd_ctrl_io_exp_0_0
     port map (
      clk => clk_div_0_clk_out,
      leds_state(15 downto 0) => leds_display_0_io_exp_0(15 downto 0),
      r_data(31 downto 0) => spi_master_0_r_data(31 downto 0),
      r_ready => ctrl_io_exp_0_r_ready,
      r_valid => spi_master_0_r_valid,
      rstn => rstn_0_1,
      w_data(31 downto 0) => ctrl_io_exp_0_w_data(31 downto 0),
      w_ready => spi_master_0_w_ready,
      w_valid => ctrl_io_exp_0_w_valid
    );
ctrl_io_exp_1: component top_bd_ctrl_io_exp_1_0
     port map (
      clk => clk_div_0_clk_out,
      leds_state(15 downto 0) => leds_display_0_io_exp_1(15 downto 0),
      r_data(31 downto 0) => spi_master_1_r_data(31 downto 0),
      r_ready => ctrl_io_exp_1_r_ready,
      r_valid => spi_master_1_r_valid,
      rstn => rstn_0_1,
      w_data(31 downto 0) => ctrl_io_exp_1_w_data(31 downto 0),
      w_ready => spi_master_1_w_ready,
      w_valid => ctrl_io_exp_1_w_valid
    );
leds_display_0: component top_bd_leds_display_0_0
     port map (
      board_started => power_management_0_board_started,
      clk => clk_div_0_clk_out,
      clk_slow => sequencer_0_clk_slow,
      io_exp_0(15 downto 0) => leds_display_0_io_exp_0(15 downto 0),
      io_exp_1(15 downto 0) => leds_display_0_io_exp_1(15 downto 0),
      rstn => rstn_0_1,
      shut_down => power_management_0_shut_down,
      sw_not_programmed => sw_not_programmed_0_1,
      test_done(24 downto 0) => sequencer_0_test_done(24 downto 0),
      test_results(24 downto 0) => sequencer_0_test_results(24 downto 0)
    );
power_management_0: component top_bd_power_management_0_0
     port map (
      EN_PWR_5V => power_management_0_EN_PWR_5V,
      IOV_VMECPU => IOV_VMECPU_0_1,
      PG_PWR_5V => PG_PWR_5V_0_1,
      board_started => power_management_0_board_started,
      clk => clk_div_0_clk_out,
      ready_bit => NLW_power_management_0_ready_bit_UNCONNECTED,
      rstn => rstn_0_1,
      shut_down => power_management_0_shut_down,
      start_btnn => start_btnn_0_1,
      testing_bit => NLW_power_management_0_testing_bit_UNCONNECTED,
      value_5V(11 downto 0) => ctrl_adc_0_AIN3_value(11 downto 0),
      value_I_VMECPU(11 downto 0) => ctrl_adc_0_AIN5_value(11 downto 0)
    );
sequencer_0: component top_bd_sequencer_0_0
     port map (
      CLOCK_OUT => CLOCK_OUT_0_1,
      TST_CLK_S0 => sequencer_0_TST_CLK_S0,
      TST_CLK_S1 => sequencer_0_TST_CLK_S1,
      TST_CLK_S2 => sequencer_0_TST_CLK_S2,
      XTAL_RTC_OE => sequencer_0_XTAL_RTC_OE,
      board_started => power_management_0_board_started,
      btn_rst_ok => sequencer_0_btn_rst_ok,
      btn_rst_t => sequencer_0_btn_rst_t,
      clk => clk_div_0_clk_out,
      clk_100M => clk_wiz_0_clk_out1,
      clk_slow => sequencer_0_clk_slow,
      cnt_SEQ_1V0_TO_3V3_for_ILA(7 downto 0) => NLW_sequencer_0_cnt_SEQ_1V0_TO_3V3_for_ILA_UNCONNECTED(7 downto 0),
      cnt_SEQ_1V2_TO_VCORE_for_ILA(7 downto 0) => NLW_sequencer_0_cnt_SEQ_1V2_TO_VCORE_for_ILA_UNCONNECTED(7 downto 0),
      cnt_SEQ_1V8_TO_1V2_for_ILA(7 downto 0) => NLW_sequencer_0_cnt_SEQ_1V8_TO_1V2_for_ILA_UNCONNECTED(7 downto 0),
      cnt_SEQ_3V3_TO_1V8_for_ILA(7 downto 0) => NLW_sequencer_0_cnt_SEQ_3V3_TO_1V8_for_ILA_UNCONNECTED(7 downto 0),
      cnt_SEQ_VCORE_TO_VDIMM_for_ILA(7 downto 0) => NLW_sequencer_0_cnt_SEQ_VCORE_TO_VDIMM_for_ILA_UNCONNECTED(7 downto 0),
      cnt_SEQ_VDIMM_TO_PORESET_for_ILA(7 downto 0) => NLW_sequencer_0_cnt_SEQ_VDIMM_TO_PORESET_for_ILA_UNCONNECTED(7 downto 0),
      cnt_b3_for_ILA(64 downto 0) => NLW_sequencer_0_cnt_b3_for_ILA_UNCONNECTED(64 downto 0),
      cnt_b4_for_ILA(64 downto 0) => sequencer_0_cnt_b4_for_ILA(64 downto 0),
      cnt_b5_for_ILA(64 downto 0) => NLW_sequencer_0_cnt_b5_for_ILA_UNCONNECTED(64 downto 0),
      cnt_b6_for_ILA(64 downto 0) => NLW_sequencer_0_cnt_b6_for_ILA_UNCONNECTED(64 downto 0),
      cnt_b7_for_ILA(64 downto 0) => NLW_sequencer_0_cnt_b7_for_ILA_UNCONNECTED(64 downto 0),
      cnt_b8_for_ILA(64 downto 0) => NLW_sequencer_0_cnt_b8_for_ILA_UNCONNECTED(64 downto 0),
      cnt_btn_reset_to_btn_reset_off_for_ILA(64 downto 0) => sequencer_0_cnt_btn_reset_to_btn_reset_off_for_ILA(64 downto 0),
      cnt_hreset_to_led_usr_2_for_ILA(64 downto 0) => sequencer_0_cnt_hreset_to_led_usr_2_for_ILA(64 downto 0),
      cnt_hreset_to_led_usr_for_ILA(64 downto 0) => sequencer_0_cnt_hreset_to_led_usr_for_ILA(64 downto 0),
      cnt_led_usr_to_btn_reset_for_ILA(64 downto 0) => sequencer_0_cnt_led_usr_to_btn_reset_for_ILA(64 downto 0),
      cnt_pgvdimm_to_poreset_2_for_ILA(64 downto 0) => sequencer_0_cnt_pgvdimm_to_poreset_2_for_ILA(64 downto 0),
      cnt_pgvdimm_to_poreset_for_ILA(64 downto 0) => sequencer_0_cnt_pgvdimm_to_poreset_for_ILA(64 downto 0),
      cnt_poreset_to_hreset_2_for_ILA(64 downto 0) => sequencer_0_cnt_poreset_to_hreset_2_for_ILA(64 downto 0),
      cnt_poreset_to_hreset_for_ILA(64 downto 0) => sequencer_0_cnt_poreset_to_hreset_for_ILA(64 downto 0),
      en_5v => en_5v_0_1,
      en_led0 => ctrl_io_exp_0_en_led0,
      en_led1 => ctrl_io_exp_0_en_led1,
      ended => NLW_sequencer_0_ended_UNCONNECTED,
      hreset => hreset_0_1,
      hreset_2_ok => sequencer_0_hreset_2_ok,
      hreset_ok => sequencer_0_hreset_ok,
      led_rst => led_rst_0_1,
      led_usr => led_usr_0_1,
      led_usr_ok => sequencer_0_led_usr_ok,
      led_wtd => led_wtd_0_1,
      ok_if => NLW_sequencer_0_ok_if_UNCONNECTED,
      pas_ok_if => NLW_sequencer_0_pas_ok_if_UNCONNECTED,
      pg_1V0 => pg_1V0_0_1,
      pg_1V2 => pg_1V2_0_1,
      pg_1V8 => pg_1V8_0_1,
      pg_3V3 => pg_3V3_0_1,
      pg_5v => pg_5v_0_1,
      pg_poreset => pg_poreset_0_1,
      pg_vcore => pg_vcore_0_1,
      pg_vdimm => pg_vdimm_0_1,
      poreset_2_ok => sequencer_0_poreset_2_ok,
      poreset_ok => sequencer_0_poreset_ok,
      rst_done_ok => sequencer_0_rst_done_ok,
      rstn => rstn_0_1,
      seq_result_for_ILA(5 downto 0) => NLW_sequencer_0_seq_result_for_ILA_UNCONNECTED(5 downto 0),
      sw_not_programmed => sw_not_programmed_0_1,
      test_done(24 downto 0) => sequencer_0_test_done(24 downto 0),
      test_results(24 downto 0) => sequencer_0_test_results(24 downto 0),
      value_1V0(11 downto 0) => ctrl_adc_0_AIN1_value(11 downto 0),
      value_1V2(11 downto 0) => ctrl_adc_0_AIN8_value(11 downto 0),
      value_1V8(11 downto 0) => ctrl_adc_0_AIN2_value(11 downto 0),
      value_3V3(11 downto 0) => ctrl_adc_0_AIN0_value(11 downto 0),
      value_5V(11 downto 0) => ctrl_adc_0_AIN3_value(11 downto 0),
      value_I_VMECPU(11 downto 0) => ctrl_adc_0_AIN5_value(11 downto 0),
      value_VBAT(11 downto 0) => ctrl_adc_0_AIN4_value(11 downto 0),
      value_VCORE(11 downto 0) => ctrl_adc_0_AIN9_value(11 downto 0),
      value_VDIMM(11 downto 0) => ctrl_adc_0_AIN7_value(11 downto 0),
      value_VDIMM_VTT(11 downto 0) => ctrl_adc_0_AIN6_value(11 downto 0),
      value_result => NLW_sequencer_0_value_result_UNCONNECTED,
      vdimm_2_ok => NLW_sequencer_0_vdimm_2_ok_UNCONNECTED,
      vdimm_ok => NLW_sequencer_0_vdimm_ok_UNCONNECTED
    );
spi_master_0: component top_bd_spi_master_0_0
     port map (
      clk => clk_div_0_clk_out,
      r_data(31 downto 0) => spi_master_0_r_data(31 downto 0),
      r_ready => ctrl_io_exp_0_r_ready,
      r_valid => spi_master_0_r_valid,
      rstn => rstn_0_1,
      spi_clk => spi_master_0_spi_clk,
      spi_csn => spi_master_0_spi_csn,
      spi_miso => spi_miso_2,
      spi_mosi => spi_master_0_spi_mosi,
      w_data(31 downto 0) => ctrl_io_exp_0_w_data(31 downto 0),
      w_ready => spi_master_0_w_ready,
      w_valid => ctrl_io_exp_0_w_valid
    );
spi_master_1: component top_bd_spi_master_1_0
     port map (
      clk => clk_div_0_clk_out,
      r_data(31 downto 0) => spi_master_1_r_data(31 downto 0),
      r_ready => ctrl_io_exp_1_r_ready,
      r_valid => spi_master_1_r_valid,
      rstn => rstn_0_1,
      spi_clk => spi_master_1_spi_clk,
      spi_csn => spi_master_1_spi_csn,
      spi_miso => spi_miso_0_1,
      spi_mosi => spi_master_1_spi_mosi,
      w_data(31 downto 0) => ctrl_io_exp_1_w_data(31 downto 0),
      w_ready => spi_master_1_w_ready,
      w_valid => ctrl_io_exp_1_w_valid
    );
spi_master_2: component top_bd_spi_master_2_0
     port map (
      clk => clk_div_0_clk_out,
      r_data(11 downto 0) => spi_master_2_r_data(11 downto 0),
      r_ready => ctrl_adc_0_r_ready,
      r_valid => spi_master_2_r_valid,
      rstn => rstn_0_1,
      spi_clk => spi_master_2_spi_clk,
      spi_csn => spi_master_2_spi_csn,
      spi_miso => spi_miso_0_2,
      spi_mosi => spi_master_2_spi_mosi,
      w_data(11 downto 0) => ctrl_adc_0_w_data(11 downto 0),
      w_ready => spi_master_2_w_ready,
      w_valid => ctrl_adc_0_w_valid
    );
system_ila_0: component top_bd_system_ila_0_5
     port map (
      clk => clk_wiz_0_clk_out1,
      probe0(0) => led_rst_0_1,
      probe1(0) => led_usr_0_1,
      probe10(64 downto 0) => sequencer_0_cnt_pgvdimm_to_poreset_2_for_ILA(64 downto 0),
      probe11(64 downto 0) => sequencer_0_cnt_poreset_to_hreset_2_for_ILA(64 downto 0),
      probe12(64 downto 0) => sequencer_0_cnt_hreset_to_led_usr_2_for_ILA(64 downto 0),
      probe13(64 downto 0) => sequencer_0_cnt_btn_reset_to_btn_reset_off_for_ILA(64 downto 0),
      probe14(0) => sequencer_0_rst_done_ok,
      probe15(0) => sequencer_0_hreset_2_ok,
      probe16(0) => sequencer_0_poreset_2_ok,
      probe17(0) => sequencer_0_btn_rst_ok,
      probe18(0) => sequencer_0_led_usr_ok,
      probe19(0) => sequencer_0_hreset_ok,
      probe2(0) => led_wtd_0_1,
      probe20(0) => sequencer_0_poreset_ok,
      probe21(0) => hreset_0_1,
      probe22(0) => led_wtd_0_1,
      probe23(0) => led_usr_0_1,
      probe24(0) => led_rst_0_1,
      probe25(64 downto 0) => sequencer_0_cnt_b4_for_ILA(64 downto 0),
      probe26(0) => '0',
      probe27(0) => '0',
      probe3(0) => hreset_0_1,
      probe4(0) => sequencer_0_btn_rst_t,
      probe5(0) => pg_poreset_0_1,
      probe6(64 downto 0) => sequencer_0_cnt_pgvdimm_to_poreset_for_ILA(64 downto 0),
      probe7(64 downto 0) => sequencer_0_cnt_poreset_to_hreset_for_ILA(64 downto 0),
      probe8(64 downto 0) => sequencer_0_cnt_hreset_to_led_usr_for_ILA(64 downto 0),
      probe9(64 downto 0) => sequencer_0_cnt_led_usr_to_btn_reset_for_ILA(64 downto 0)
    );
end STRUCTURE;
