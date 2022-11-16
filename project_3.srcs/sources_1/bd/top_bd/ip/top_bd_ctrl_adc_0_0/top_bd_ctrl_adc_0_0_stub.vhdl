-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Jun 16 11:20:03 2021
-- Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_ctrl_adc_0_0/top_bd_ctrl_adc_0_0_stub.vhdl
-- Design      : top_bd_ctrl_adc_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_bd_ctrl_adc_0_0 is
  Port ( 
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

end top_bd_ctrl_adc_0_0;

architecture stub of top_bd_ctrl_adc_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rstn,clk,ADC_eoc,AIN0_value[11:0],AIN1_value[11:0],AIN2_value[11:0],AIN3_value[11:0],AIN4_value[11:0],AIN5_value[11:0],AIN6_value[11:0],AIN7_value[11:0],AIN8_value[11:0],AIN9_value[11:0],w_valid,w_ready,r_ready,r_valid,r_data[11:0],w_data[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ctrl_adc,Vivado 2020.1";
begin
end;