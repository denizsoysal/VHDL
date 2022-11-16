-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Jun 16 11:20:03 2021
-- Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_ctrl_adc_0_0/top_bd_ctrl_adc_0_0_sim_netlist.vhdl
-- Design      : top_bd_ctrl_adc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_ctrl_adc_0_0_ctrl_adc is
  port (
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
    r_ready : out STD_LOGIC;
    w_data : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    ADC_eoc : in STD_LOGIC;
    r_data : in STD_LOGIC_VECTOR ( 11 downto 0 );
    r_valid : in STD_LOGIC;
    w_ready : in STD_LOGIC;
    rstn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_bd_ctrl_adc_0_0_ctrl_adc : entity is "ctrl_adc";
end top_bd_ctrl_adc_0_0_ctrl_adc;

architecture STRUCTURE of top_bd_ctrl_adc_0_0_ctrl_adc is
  signal ADC_eoc_d0 : STD_LOGIC;
  signal ADC_eoc_d1 : STD_LOGIC;
  signal AIN0_value_b0 : STD_LOGIC;
  signal \AIN0_value_b0[11]_i_1_n_0\ : STD_LOGIC;
  signal \AIN0_value_b0[11]_i_2_n_0\ : STD_LOGIC;
  signal AIN1_value_b0 : STD_LOGIC;
  signal \AIN1_value_b0[11]_i_1_n_0\ : STD_LOGIC;
  signal AIN2_value_b0 : STD_LOGIC;
  signal \AIN2_value_b0[11]_i_1_n_0\ : STD_LOGIC;
  signal AIN3_value_b0 : STD_LOGIC;
  signal \AIN3_value_b0[11]_i_1_n_0\ : STD_LOGIC;
  signal AIN4_value_b0 : STD_LOGIC;
  signal \AIN4_value_b0[11]_i_1_n_0\ : STD_LOGIC;
  signal AIN5_value_b0 : STD_LOGIC;
  signal \AIN5_value_b0[11]_i_1_n_0\ : STD_LOGIC;
  signal AIN6_value_b0 : STD_LOGIC;
  signal \AIN6_value_b0[11]_i_1_n_0\ : STD_LOGIC;
  signal AIN7_value_b0 : STD_LOGIC;
  signal \AIN7_value_b0[11]_i_1_n_0\ : STD_LOGIC;
  signal AIN8_value_b0 : STD_LOGIC;
  signal \AIN8_value_b0[11]_i_1_n_0\ : STD_LOGIC;
  signal AIN9_value_b0 : STD_LOGIC;
  signal \AIN9_value_b0[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[13]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[14]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[15]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[16]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[17]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[18]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[19]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[20]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[13]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[15]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[17]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[19]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[9]\ : STD_LOGIC;
  signal rising_edge_ADC_eoc : STD_LOGIC;
  signal rising_edge_ADC_eoc_i_1_n_0 : STD_LOGIC;
  signal \w_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[9]_i_1_n_0\ : STD_LOGIC;
  signal w_valid_i_1_n_0 : STD_LOGIC;
  signal w_valid_i_2_n_0 : STD_LOGIC;
  signal w_valid_i_3_n_0 : STD_LOGIC;
  signal w_valid_i_4_n_0 : STD_LOGIC;
  signal w_valid_i_5_n_0 : STD_LOGIC;
  signal w_valid_i_6_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_state[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_state[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_state[13]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_state[14]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_state[15]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_state[16]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_state[17]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_state[18]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_state[19]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[20]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_state[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_state[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_state[9]_i_1\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[10]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[11]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[12]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[13]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[14]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[15]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[16]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[17]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[18]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[19]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[20]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "s_read_ain4:000000001000000000000,s_config_ain6:000000010000000000000,s_read_ain3:000000000010000000000,s_config_ain9:010000000000000000000,s_read_ain6:000010000000000000000,s_config_ain1:000000000000000001000,s_read_ain8:100000000000000000000,s_config_ain8:000100000000000000000,s_read_ain5:000000100000000000000,s_config_ain0:000000000000000000010,s_config_ain5:000000000100000000000,s_idle:000000000000000000001,s_read_ain2:000000000000100000000,s_config_ain3:000000000000010000000,s_read_ain0:000000000000000010000,s_read_ain7:001000000000000000000,s_config_ain4:000000000001000000000,s_read_ain1:000000000000001000000,s_config_ain2:000000000000000100000,s_read_ain9:000000000000000000100,s_config_ain7:000001000000000000000";
  attribute SOFT_HLUTNM of \w_data[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of w_valid_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of w_valid_i_5 : label is "soft_lutpair1";
begin
ADC_eoc_d0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ADC_eoc,
      Q => ADC_eoc_d0,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
ADC_eoc_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ADC_eoc_d0,
      Q => ADC_eoc_d1,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN0_value_b0[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN0_value_b0[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => AIN0_value_b0,
      I1 => r_valid,
      O => \AIN0_value_b0[11]_i_2_n_0\
    );
\AIN0_value_b0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN0_value_b0[11]_i_2_n_0\,
      D => r_data(0),
      Q => AIN0_value(0),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN0_value_b0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN0_value_b0[11]_i_2_n_0\,
      D => r_data(10),
      Q => AIN0_value(10),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN0_value_b0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN0_value_b0[11]_i_2_n_0\,
      D => r_data(11),
      Q => AIN0_value(11),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN0_value_b0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN0_value_b0[11]_i_2_n_0\,
      D => r_data(1),
      Q => AIN0_value(1),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN0_value_b0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN0_value_b0[11]_i_2_n_0\,
      D => r_data(2),
      Q => AIN0_value(2),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN0_value_b0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN0_value_b0[11]_i_2_n_0\,
      D => r_data(3),
      Q => AIN0_value(3),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN0_value_b0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN0_value_b0[11]_i_2_n_0\,
      D => r_data(4),
      Q => AIN0_value(4),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN0_value_b0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN0_value_b0[11]_i_2_n_0\,
      D => r_data(5),
      Q => AIN0_value(5),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN0_value_b0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN0_value_b0[11]_i_2_n_0\,
      D => r_data(6),
      Q => AIN0_value(6),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN0_value_b0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN0_value_b0[11]_i_2_n_0\,
      D => r_data(7),
      Q => AIN0_value(7),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN0_value_b0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN0_value_b0[11]_i_2_n_0\,
      D => r_data(8),
      Q => AIN0_value(8),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN0_value_b0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN0_value_b0[11]_i_2_n_0\,
      D => r_data(9),
      Q => AIN0_value(9),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN1_value_b0[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_valid,
      I1 => AIN1_value_b0,
      O => \AIN1_value_b0[11]_i_1_n_0\
    );
\AIN1_value_b0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN1_value_b0[11]_i_1_n_0\,
      D => r_data(0),
      Q => AIN1_value(0),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN1_value_b0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN1_value_b0[11]_i_1_n_0\,
      D => r_data(10),
      Q => AIN1_value(10),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN1_value_b0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN1_value_b0[11]_i_1_n_0\,
      D => r_data(11),
      Q => AIN1_value(11),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN1_value_b0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN1_value_b0[11]_i_1_n_0\,
      D => r_data(1),
      Q => AIN1_value(1),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN1_value_b0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN1_value_b0[11]_i_1_n_0\,
      D => r_data(2),
      Q => AIN1_value(2),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN1_value_b0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN1_value_b0[11]_i_1_n_0\,
      D => r_data(3),
      Q => AIN1_value(3),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN1_value_b0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN1_value_b0[11]_i_1_n_0\,
      D => r_data(4),
      Q => AIN1_value(4),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN1_value_b0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN1_value_b0[11]_i_1_n_0\,
      D => r_data(5),
      Q => AIN1_value(5),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN1_value_b0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN1_value_b0[11]_i_1_n_0\,
      D => r_data(6),
      Q => AIN1_value(6),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN1_value_b0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN1_value_b0[11]_i_1_n_0\,
      D => r_data(7),
      Q => AIN1_value(7),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN1_value_b0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN1_value_b0[11]_i_1_n_0\,
      D => r_data(8),
      Q => AIN1_value(8),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN1_value_b0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN1_value_b0[11]_i_1_n_0\,
      D => r_data(9),
      Q => AIN1_value(9),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN2_value_b0[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_valid,
      I1 => AIN2_value_b0,
      O => \AIN2_value_b0[11]_i_1_n_0\
    );
\AIN2_value_b0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN2_value_b0[11]_i_1_n_0\,
      D => r_data(0),
      Q => AIN2_value(0),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN2_value_b0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN2_value_b0[11]_i_1_n_0\,
      D => r_data(10),
      Q => AIN2_value(10),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN2_value_b0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN2_value_b0[11]_i_1_n_0\,
      D => r_data(11),
      Q => AIN2_value(11),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN2_value_b0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN2_value_b0[11]_i_1_n_0\,
      D => r_data(1),
      Q => AIN2_value(1),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN2_value_b0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN2_value_b0[11]_i_1_n_0\,
      D => r_data(2),
      Q => AIN2_value(2),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN2_value_b0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN2_value_b0[11]_i_1_n_0\,
      D => r_data(3),
      Q => AIN2_value(3),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN2_value_b0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN2_value_b0[11]_i_1_n_0\,
      D => r_data(4),
      Q => AIN2_value(4),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN2_value_b0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN2_value_b0[11]_i_1_n_0\,
      D => r_data(5),
      Q => AIN2_value(5),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN2_value_b0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN2_value_b0[11]_i_1_n_0\,
      D => r_data(6),
      Q => AIN2_value(6),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN2_value_b0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN2_value_b0[11]_i_1_n_0\,
      D => r_data(7),
      Q => AIN2_value(7),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN2_value_b0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN2_value_b0[11]_i_1_n_0\,
      D => r_data(8),
      Q => AIN2_value(8),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN2_value_b0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN2_value_b0[11]_i_1_n_0\,
      D => r_data(9),
      Q => AIN2_value(9),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN3_value_b0[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_valid,
      I1 => AIN3_value_b0,
      O => \AIN3_value_b0[11]_i_1_n_0\
    );
\AIN3_value_b0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN3_value_b0[11]_i_1_n_0\,
      D => r_data(0),
      Q => AIN3_value(0),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN3_value_b0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN3_value_b0[11]_i_1_n_0\,
      D => r_data(10),
      Q => AIN3_value(10),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN3_value_b0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN3_value_b0[11]_i_1_n_0\,
      D => r_data(11),
      Q => AIN3_value(11),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN3_value_b0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN3_value_b0[11]_i_1_n_0\,
      D => r_data(1),
      Q => AIN3_value(1),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN3_value_b0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN3_value_b0[11]_i_1_n_0\,
      D => r_data(2),
      Q => AIN3_value(2),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN3_value_b0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN3_value_b0[11]_i_1_n_0\,
      D => r_data(3),
      Q => AIN3_value(3),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN3_value_b0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN3_value_b0[11]_i_1_n_0\,
      D => r_data(4),
      Q => AIN3_value(4),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN3_value_b0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN3_value_b0[11]_i_1_n_0\,
      D => r_data(5),
      Q => AIN3_value(5),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN3_value_b0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN3_value_b0[11]_i_1_n_0\,
      D => r_data(6),
      Q => AIN3_value(6),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN3_value_b0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN3_value_b0[11]_i_1_n_0\,
      D => r_data(7),
      Q => AIN3_value(7),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN3_value_b0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN3_value_b0[11]_i_1_n_0\,
      D => r_data(8),
      Q => AIN3_value(8),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN3_value_b0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN3_value_b0[11]_i_1_n_0\,
      D => r_data(9),
      Q => AIN3_value(9),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN4_value_b0[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_valid,
      I1 => AIN4_value_b0,
      O => \AIN4_value_b0[11]_i_1_n_0\
    );
\AIN4_value_b0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN4_value_b0[11]_i_1_n_0\,
      D => r_data(0),
      Q => AIN4_value(0),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN4_value_b0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN4_value_b0[11]_i_1_n_0\,
      D => r_data(10),
      Q => AIN4_value(10),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN4_value_b0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN4_value_b0[11]_i_1_n_0\,
      D => r_data(11),
      Q => AIN4_value(11),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN4_value_b0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN4_value_b0[11]_i_1_n_0\,
      D => r_data(1),
      Q => AIN4_value(1),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN4_value_b0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN4_value_b0[11]_i_1_n_0\,
      D => r_data(2),
      Q => AIN4_value(2),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN4_value_b0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN4_value_b0[11]_i_1_n_0\,
      D => r_data(3),
      Q => AIN4_value(3),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN4_value_b0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN4_value_b0[11]_i_1_n_0\,
      D => r_data(4),
      Q => AIN4_value(4),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN4_value_b0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN4_value_b0[11]_i_1_n_0\,
      D => r_data(5),
      Q => AIN4_value(5),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN4_value_b0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN4_value_b0[11]_i_1_n_0\,
      D => r_data(6),
      Q => AIN4_value(6),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN4_value_b0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN4_value_b0[11]_i_1_n_0\,
      D => r_data(7),
      Q => AIN4_value(7),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN4_value_b0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN4_value_b0[11]_i_1_n_0\,
      D => r_data(8),
      Q => AIN4_value(8),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN4_value_b0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN4_value_b0[11]_i_1_n_0\,
      D => r_data(9),
      Q => AIN4_value(9),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN5_value_b0[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_valid,
      I1 => AIN5_value_b0,
      O => \AIN5_value_b0[11]_i_1_n_0\
    );
\AIN5_value_b0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN5_value_b0[11]_i_1_n_0\,
      D => r_data(0),
      Q => AIN5_value(0),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN5_value_b0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN5_value_b0[11]_i_1_n_0\,
      D => r_data(10),
      Q => AIN5_value(10),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN5_value_b0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN5_value_b0[11]_i_1_n_0\,
      D => r_data(11),
      Q => AIN5_value(11),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN5_value_b0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN5_value_b0[11]_i_1_n_0\,
      D => r_data(1),
      Q => AIN5_value(1),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN5_value_b0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN5_value_b0[11]_i_1_n_0\,
      D => r_data(2),
      Q => AIN5_value(2),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN5_value_b0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN5_value_b0[11]_i_1_n_0\,
      D => r_data(3),
      Q => AIN5_value(3),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN5_value_b0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN5_value_b0[11]_i_1_n_0\,
      D => r_data(4),
      Q => AIN5_value(4),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN5_value_b0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN5_value_b0[11]_i_1_n_0\,
      D => r_data(5),
      Q => AIN5_value(5),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN5_value_b0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN5_value_b0[11]_i_1_n_0\,
      D => r_data(6),
      Q => AIN5_value(6),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN5_value_b0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN5_value_b0[11]_i_1_n_0\,
      D => r_data(7),
      Q => AIN5_value(7),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN5_value_b0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN5_value_b0[11]_i_1_n_0\,
      D => r_data(8),
      Q => AIN5_value(8),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN5_value_b0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN5_value_b0[11]_i_1_n_0\,
      D => r_data(9),
      Q => AIN5_value(9),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN6_value_b0[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_valid,
      I1 => AIN6_value_b0,
      O => \AIN6_value_b0[11]_i_1_n_0\
    );
\AIN6_value_b0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN6_value_b0[11]_i_1_n_0\,
      D => r_data(0),
      Q => AIN6_value(0),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN6_value_b0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN6_value_b0[11]_i_1_n_0\,
      D => r_data(10),
      Q => AIN6_value(10),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN6_value_b0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN6_value_b0[11]_i_1_n_0\,
      D => r_data(11),
      Q => AIN6_value(11),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN6_value_b0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN6_value_b0[11]_i_1_n_0\,
      D => r_data(1),
      Q => AIN6_value(1),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN6_value_b0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN6_value_b0[11]_i_1_n_0\,
      D => r_data(2),
      Q => AIN6_value(2),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN6_value_b0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN6_value_b0[11]_i_1_n_0\,
      D => r_data(3),
      Q => AIN6_value(3),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN6_value_b0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN6_value_b0[11]_i_1_n_0\,
      D => r_data(4),
      Q => AIN6_value(4),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN6_value_b0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN6_value_b0[11]_i_1_n_0\,
      D => r_data(5),
      Q => AIN6_value(5),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN6_value_b0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN6_value_b0[11]_i_1_n_0\,
      D => r_data(6),
      Q => AIN6_value(6),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN6_value_b0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN6_value_b0[11]_i_1_n_0\,
      D => r_data(7),
      Q => AIN6_value(7),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN6_value_b0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN6_value_b0[11]_i_1_n_0\,
      D => r_data(8),
      Q => AIN6_value(8),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN6_value_b0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN6_value_b0[11]_i_1_n_0\,
      D => r_data(9),
      Q => AIN6_value(9),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN7_value_b0[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_valid,
      I1 => AIN7_value_b0,
      O => \AIN7_value_b0[11]_i_1_n_0\
    );
\AIN7_value_b0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN7_value_b0[11]_i_1_n_0\,
      D => r_data(0),
      Q => AIN7_value(0),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN7_value_b0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN7_value_b0[11]_i_1_n_0\,
      D => r_data(10),
      Q => AIN7_value(10),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN7_value_b0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN7_value_b0[11]_i_1_n_0\,
      D => r_data(11),
      Q => AIN7_value(11),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN7_value_b0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN7_value_b0[11]_i_1_n_0\,
      D => r_data(1),
      Q => AIN7_value(1),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN7_value_b0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN7_value_b0[11]_i_1_n_0\,
      D => r_data(2),
      Q => AIN7_value(2),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN7_value_b0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN7_value_b0[11]_i_1_n_0\,
      D => r_data(3),
      Q => AIN7_value(3),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN7_value_b0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN7_value_b0[11]_i_1_n_0\,
      D => r_data(4),
      Q => AIN7_value(4),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN7_value_b0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN7_value_b0[11]_i_1_n_0\,
      D => r_data(5),
      Q => AIN7_value(5),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN7_value_b0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN7_value_b0[11]_i_1_n_0\,
      D => r_data(6),
      Q => AIN7_value(6),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN7_value_b0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN7_value_b0[11]_i_1_n_0\,
      D => r_data(7),
      Q => AIN7_value(7),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN7_value_b0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN7_value_b0[11]_i_1_n_0\,
      D => r_data(8),
      Q => AIN7_value(8),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN7_value_b0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN7_value_b0[11]_i_1_n_0\,
      D => r_data(9),
      Q => AIN7_value(9),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN8_value_b0[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_valid,
      I1 => AIN8_value_b0,
      O => \AIN8_value_b0[11]_i_1_n_0\
    );
\AIN8_value_b0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN8_value_b0[11]_i_1_n_0\,
      D => r_data(0),
      Q => AIN8_value(0),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN8_value_b0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN8_value_b0[11]_i_1_n_0\,
      D => r_data(10),
      Q => AIN8_value(10),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN8_value_b0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN8_value_b0[11]_i_1_n_0\,
      D => r_data(11),
      Q => AIN8_value(11),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN8_value_b0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN8_value_b0[11]_i_1_n_0\,
      D => r_data(1),
      Q => AIN8_value(1),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN8_value_b0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN8_value_b0[11]_i_1_n_0\,
      D => r_data(2),
      Q => AIN8_value(2),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN8_value_b0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN8_value_b0[11]_i_1_n_0\,
      D => r_data(3),
      Q => AIN8_value(3),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN8_value_b0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN8_value_b0[11]_i_1_n_0\,
      D => r_data(4),
      Q => AIN8_value(4),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN8_value_b0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN8_value_b0[11]_i_1_n_0\,
      D => r_data(5),
      Q => AIN8_value(5),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN8_value_b0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN8_value_b0[11]_i_1_n_0\,
      D => r_data(6),
      Q => AIN8_value(6),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN8_value_b0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN8_value_b0[11]_i_1_n_0\,
      D => r_data(7),
      Q => AIN8_value(7),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN8_value_b0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN8_value_b0[11]_i_1_n_0\,
      D => r_data(8),
      Q => AIN8_value(8),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN8_value_b0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN8_value_b0[11]_i_1_n_0\,
      D => r_data(9),
      Q => AIN8_value(9),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN9_value_b0[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_valid,
      I1 => AIN9_value_b0,
      O => \AIN9_value_b0[11]_i_1_n_0\
    );
\AIN9_value_b0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN9_value_b0[11]_i_1_n_0\,
      D => r_data(0),
      Q => AIN9_value(0),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN9_value_b0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN9_value_b0[11]_i_1_n_0\,
      D => r_data(10),
      Q => AIN9_value(10),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN9_value_b0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN9_value_b0[11]_i_1_n_0\,
      D => r_data(11),
      Q => AIN9_value(11),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN9_value_b0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN9_value_b0[11]_i_1_n_0\,
      D => r_data(1),
      Q => AIN9_value(1),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN9_value_b0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN9_value_b0[11]_i_1_n_0\,
      D => r_data(2),
      Q => AIN9_value(2),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN9_value_b0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN9_value_b0[11]_i_1_n_0\,
      D => r_data(3),
      Q => AIN9_value(3),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN9_value_b0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN9_value_b0[11]_i_1_n_0\,
      D => r_data(4),
      Q => AIN9_value(4),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN9_value_b0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN9_value_b0[11]_i_1_n_0\,
      D => r_data(5),
      Q => AIN9_value(5),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN9_value_b0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN9_value_b0[11]_i_1_n_0\,
      D => r_data(6),
      Q => AIN9_value(6),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN9_value_b0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN9_value_b0[11]_i_1_n_0\,
      D => r_data(7),
      Q => AIN9_value(7),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN9_value_b0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN9_value_b0[11]_i_1_n_0\,
      D => r_data(8),
      Q => AIN9_value(8),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\AIN9_value_b0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \AIN9_value_b0[11]_i_1_n_0\,
      D => r_data(9),
      Q => AIN9_value(9),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => w_ready,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => rising_edge_ADC_eoc,
      I1 => AIN3_value_b0,
      I2 => w_ready,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      O => \FSM_onehot_state[10]_i_1_n_0\
    );
\FSM_onehot_state[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[11]\,
      I1 => w_ready,
      I2 => rising_edge_ADC_eoc,
      I3 => AIN3_value_b0,
      O => \FSM_onehot_state[11]_i_1_n_0\
    );
\FSM_onehot_state[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => rising_edge_ADC_eoc,
      I1 => AIN4_value_b0,
      I2 => w_ready,
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      O => \FSM_onehot_state[12]_i_1_n_0\
    );
\FSM_onehot_state[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[13]\,
      I1 => w_ready,
      I2 => rising_edge_ADC_eoc,
      I3 => AIN4_value_b0,
      O => \FSM_onehot_state[13]_i_1_n_0\
    );
\FSM_onehot_state[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => rising_edge_ADC_eoc,
      I1 => AIN5_value_b0,
      I2 => w_ready,
      I3 => \FSM_onehot_state_reg_n_0_[13]\,
      O => \FSM_onehot_state[14]_i_1_n_0\
    );
\FSM_onehot_state[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[15]\,
      I1 => w_ready,
      I2 => rising_edge_ADC_eoc,
      I3 => AIN5_value_b0,
      O => \FSM_onehot_state[15]_i_1_n_0\
    );
\FSM_onehot_state[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => rising_edge_ADC_eoc,
      I1 => AIN6_value_b0,
      I2 => w_ready,
      I3 => \FSM_onehot_state_reg_n_0_[15]\,
      O => \FSM_onehot_state[16]_i_1_n_0\
    );
\FSM_onehot_state[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[17]\,
      I1 => w_ready,
      I2 => rising_edge_ADC_eoc,
      I3 => AIN6_value_b0,
      O => \FSM_onehot_state[17]_i_1_n_0\
    );
\FSM_onehot_state[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => rising_edge_ADC_eoc,
      I1 => AIN7_value_b0,
      I2 => w_ready,
      I3 => \FSM_onehot_state_reg_n_0_[17]\,
      O => \FSM_onehot_state[18]_i_1_n_0\
    );
\FSM_onehot_state[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[19]\,
      I1 => w_ready,
      I2 => rising_edge_ADC_eoc,
      I3 => AIN7_value_b0,
      O => \FSM_onehot_state[19]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF88888"
    )
        port map (
      I0 => rising_edge_ADC_eoc,
      I1 => AIN8_value_b0,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => w_ready,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => rising_edge_ADC_eoc,
      I1 => AIN8_value_b0,
      I2 => w_ready,
      I3 => \FSM_onehot_state_reg_n_0_[19]\,
      O => \FSM_onehot_state[20]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => rising_edge_ADC_eoc,
      I1 => AIN9_value_b0,
      I2 => w_ready,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => w_ready,
      I2 => rising_edge_ADC_eoc,
      I3 => AIN9_value_b0,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => rising_edge_ADC_eoc,
      I1 => AIN0_value_b0,
      I2 => w_ready,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => w_ready,
      I2 => rising_edge_ADC_eoc,
      I3 => AIN0_value_b0,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => rising_edge_ADC_eoc,
      I1 => AIN1_value_b0,
      I2 => w_ready,
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => w_ready,
      I2 => rising_edge_ADC_eoc,
      I3 => AIN1_value_b0,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => rising_edge_ADC_eoc,
      I1 => AIN2_value_b0,
      I2 => w_ready,
      I3 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \FSM_onehot_state[8]_i_1_n_0\
    );
\FSM_onehot_state[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => w_ready,
      I2 => rising_edge_ADC_eoc,
      I3 => AIN2_value_b0,
      O => \FSM_onehot_state[9]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[10]_i_1_n_0\,
      Q => AIN3_value_b0,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[11]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[11]\,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[12]_i_1_n_0\,
      Q => AIN4_value_b0,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[13]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[13]\,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[14]_i_1_n_0\,
      Q => AIN5_value_b0,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[15]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[15]\,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[16]_i_1_n_0\,
      Q => AIN6_value_b0,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[17]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[17]\,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[18]_i_1_n_0\,
      Q => AIN7_value_b0,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[19]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[19]\,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[20]_i_1_n_0\,
      Q => AIN8_value_b0,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => AIN9_value_b0,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => AIN0_value_b0,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => AIN1_value_b0,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[8]_i_1_n_0\,
      Q => AIN2_value_b0,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[9]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[9]\,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
r_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => w_valid_i_1_n_0,
      D => w_valid_i_1_n_0,
      Q => r_ready,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
rising_edge_ADC_eoc_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ADC_eoc_d0,
      I1 => ADC_eoc_d1,
      O => rising_edge_ADC_eoc_i_1_n_0
    );
rising_edge_ADC_eoc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rising_edge_ADC_eoc_i_1_n_0,
      Q => rising_edge_ADC_eoc,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\w_data[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[15]\,
      I1 => \FSM_onehot_state_reg_n_0_[13]\,
      I2 => \FSM_onehot_state_reg_n_0_[11]\,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      O => \w_data[10]_i_1_n_0\
    );
\w_data[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[17]\,
      I1 => \FSM_onehot_state_reg_n_0_[19]\,
      O => \w_data[11]_i_1_n_0\
    );
\w_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[15]\,
      I1 => \FSM_onehot_state_reg_n_0_[11]\,
      I2 => \FSM_onehot_state_reg_n_0_[19]\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \w_data[8]_i_1_n_0\
    );
\w_data[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[15]\,
      I1 => \FSM_onehot_state_reg_n_0_[13]\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \w_data[9]_i_1_n_0\
    );
\w_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => w_valid_i_1_n_0,
      D => \w_data[10]_i_1_n_0\,
      Q => w_data(2),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\w_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => w_valid_i_1_n_0,
      D => \w_data[11]_i_1_n_0\,
      Q => w_data(3),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\w_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => w_valid_i_1_n_0,
      D => \w_data[8]_i_1_n_0\,
      Q => w_data(0),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
\w_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => w_valid_i_1_n_0,
      D => \w_data[9]_i_1_n_0\,
      Q => w_data(1),
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
w_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => w_valid_i_3_n_0,
      I1 => \w_data[9]_i_1_n_0\,
      I2 => w_valid_i_4_n_0,
      I3 => w_valid_i_5_n_0,
      I4 => w_valid_i_6_n_0,
      O => w_valid_i_1_n_0
    );
w_valid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_state_reg_n_0_[13]\,
      I3 => \FSM_onehot_state_reg_n_0_[15]\,
      I4 => w_valid_i_3_n_0,
      O => w_valid_i_2_n_0
    );
w_valid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[19]\,
      I1 => \FSM_onehot_state_reg_n_0_[17]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_reg_n_0_[9]\,
      I5 => \FSM_onehot_state_reg_n_0_[11]\,
      O => w_valid_i_3_n_0
    );
w_valid_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => AIN7_value_b0,
      I1 => AIN6_value_b0,
      I2 => AIN3_value_b0,
      I3 => AIN1_value_b0,
      O => w_valid_i_4_n_0
    );
w_valid_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => AIN0_value_b0,
      I2 => AIN9_value_b0,
      I3 => AIN4_value_b0,
      O => w_valid_i_5_n_0
    );
w_valid_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => AIN5_value_b0,
      I1 => AIN8_value_b0,
      I2 => AIN2_value_b0,
      O => w_valid_i_6_n_0
    );
w_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => w_valid_i_1_n_0,
      D => w_valid_i_2_n_0,
      Q => w_valid,
      R => \AIN0_value_b0[11]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_ctrl_adc_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_bd_ctrl_adc_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_bd_ctrl_adc_0_0 : entity is "top_bd_ctrl_adc_0_0,ctrl_adc,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_bd_ctrl_adc_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_bd_ctrl_adc_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_bd_ctrl_adc_0_0 : entity is "ctrl_adc,Vivado 2020.1";
end top_bd_ctrl_adc_0_0;

architecture STRUCTURE of top_bd_ctrl_adc_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^w_data\ : STD_LOGIC_VECTOR ( 11 downto 8 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute x_interface_parameter of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  w_data(11 downto 8) <= \^w_data\(11 downto 8);
  w_data(7) <= \<const0>\;
  w_data(6) <= \<const0>\;
  w_data(5) <= \<const0>\;
  w_data(4) <= \<const0>\;
  w_data(3) <= \<const0>\;
  w_data(2) <= \<const0>\;
  w_data(1) <= \<const0>\;
  w_data(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.top_bd_ctrl_adc_0_0_ctrl_adc
     port map (
      ADC_eoc => ADC_eoc,
      AIN0_value(11 downto 0) => AIN0_value(11 downto 0),
      AIN1_value(11 downto 0) => AIN1_value(11 downto 0),
      AIN2_value(11 downto 0) => AIN2_value(11 downto 0),
      AIN3_value(11 downto 0) => AIN3_value(11 downto 0),
      AIN4_value(11 downto 0) => AIN4_value(11 downto 0),
      AIN5_value(11 downto 0) => AIN5_value(11 downto 0),
      AIN6_value(11 downto 0) => AIN6_value(11 downto 0),
      AIN7_value(11 downto 0) => AIN7_value(11 downto 0),
      AIN8_value(11 downto 0) => AIN8_value(11 downto 0),
      AIN9_value(11 downto 0) => AIN9_value(11 downto 0),
      clk => clk,
      r_data(11 downto 0) => r_data(11 downto 0),
      r_ready => r_ready,
      r_valid => r_valid,
      rstn => rstn,
      w_data(3 downto 0) => \^w_data\(11 downto 8),
      w_ready => w_ready,
      w_valid => w_valid
    );
end STRUCTURE;
