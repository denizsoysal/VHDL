--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Tue Jun 22 13:52:04 2021
--Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
--Command     : generate_target top_bd_wrapper.bd
--Design      : top_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_wrapper is
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
end top_bd_wrapper;

architecture STRUCTURE of top_bd_wrapper is
  component top_bd is
  port (
    spi_miso : in STD_LOGIC;
    spi_csn : out STD_LOGIC;
    spi_clk : out STD_LOGIC;
    spi_mosi : out STD_LOGIC;
    en_led0 : out STD_LOGIC;
    clk_ref : in STD_LOGIC;
    en_led1 : out STD_LOGIC;
    spi_miso_1 : in STD_LOGIC;
    spi_mosi_1 : out STD_LOGIC;
    spi_clk_1 : out STD_LOGIC;
    spi_csn_1 : out STD_LOGIC;
    spi_miso_0 : in STD_LOGIC;
    spi_mosi_0 : out STD_LOGIC;
    spi_clk_0 : out STD_LOGIC;
    spi_csn_0 : out STD_LOGIC;
    pg_5v : in STD_LOGIC;
    en_5v : in STD_LOGIC;
    pg_1V0 : in STD_LOGIC;
    pg_1V2 : in STD_LOGIC;
    pg_1V8 : in STD_LOGIC;
    pg_vdimm : in STD_LOGIC;
    pg_vcore : in STD_LOGIC;
    pg_3V3 : in STD_LOGIC;
    pg_poreset : in STD_LOGIC;
    EN_PWR_5V : out STD_LOGIC;
    ADC_eoc : in STD_LOGIC;
    rstn : in STD_LOGIC;
    IOV_VMECPU_0 : in STD_LOGIC;
    PG_PWR_5V_0 : in STD_LOGIC;
    start_btnn_0 : in STD_LOGIC;
    CLOCK_OUT_0 : in STD_LOGIC;
    TST_CLK_S0_0 : out STD_LOGIC;
    TST_CLK_S1_0 : out STD_LOGIC;
    TST_CLK_S2_0 : out STD_LOGIC;
    sw_not_programmed_0 : in STD_LOGIC;
    led_rst_0 : in STD_LOGIC;
    led_usr_0 : in STD_LOGIC;
    led_wtd_0 : in STD_LOGIC;
    hreset_0 : in STD_LOGIC;
    btn_rst_t_0 : out STD_LOGIC;
    XTAL_RTC_OE_0 : out STD_LOGIC
  );
  end component top_bd;
begin
top_bd_i: component top_bd
     port map (
      ADC_eoc => ADC_eoc,
      CLOCK_OUT_0 => CLOCK_OUT_0,
      EN_PWR_5V => EN_PWR_5V,
      IOV_VMECPU_0 => IOV_VMECPU_0,
      PG_PWR_5V_0 => PG_PWR_5V_0,
      TST_CLK_S0_0 => TST_CLK_S0_0,
      TST_CLK_S1_0 => TST_CLK_S1_0,
      TST_CLK_S2_0 => TST_CLK_S2_0,
      XTAL_RTC_OE_0 => XTAL_RTC_OE_0,
      btn_rst_t_0 => btn_rst_t_0,
      clk_ref => clk_ref,
      en_5v => en_5v,
      en_led0 => en_led0,
      en_led1 => en_led1,
      hreset_0 => hreset_0,
      led_rst_0 => led_rst_0,
      led_usr_0 => led_usr_0,
      led_wtd_0 => led_wtd_0,
      pg_1V0 => pg_1V0,
      pg_1V2 => pg_1V2,
      pg_1V8 => pg_1V8,
      pg_3V3 => pg_3V3,
      pg_5v => pg_5v,
      pg_poreset => pg_poreset,
      pg_vcore => pg_vcore,
      pg_vdimm => pg_vdimm,
      rstn => rstn,
      spi_clk => spi_clk,
      spi_clk_0 => spi_clk_0,
      spi_clk_1 => spi_clk_1,
      spi_csn => spi_csn,
      spi_csn_0 => spi_csn_0,
      spi_csn_1 => spi_csn_1,
      spi_miso => spi_miso,
      spi_miso_0 => spi_miso_0,
      spi_miso_1 => spi_miso_1,
      spi_mosi => spi_mosi,
      spi_mosi_0 => spi_mosi_0,
      spi_mosi_1 => spi_mosi_1,
      start_btnn_0 => start_btnn_0,
      sw_not_programmed_0 => sw_not_programmed_0
    );
end STRUCTURE;
