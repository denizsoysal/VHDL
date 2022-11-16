-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Jun 16 11:20:04 2021
-- Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_spi_master_1_0/top_bd_spi_master_1_0_sim_netlist.vhdl
-- Design      : top_bd_spi_master_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_spi_master_1_0_spi_master is
  port (
    r_valid : out STD_LOGIC;
    w_ready : out STD_LOGIC;
    r_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    spi_mosi : out STD_LOGIC;
    spi_csn : out STD_LOGIC;
    spi_clk : out STD_LOGIC;
    clk : in STD_LOGIC;
    w_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    spi_miso : in STD_LOGIC;
    r_ready : in STD_LOGIC;
    w_valid : in STD_LOGIC;
    rstn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_bd_spi_master_1_0_spi_master : entity is "spi_master";
end top_bd_spi_master_1_0_spi_master;

architecture STRUCTURE of top_bd_spi_master_1_0_spi_master is
  signal \FSM_onehot_next_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal clk_en : STD_LOGIC;
  signal clk_en_reg_n_0 : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal cnt_0 : STD_LOGIC;
  signal next_state : STD_LOGIC;
  signal r_data_b0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \r_data_b0[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[11]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[13]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[14]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[15]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[15]_i_2_n_0\ : STD_LOGIC;
  signal \r_data_b0[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[17]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[18]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[19]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[21]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[22]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[23]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[23]_i_2_n_0\ : STD_LOGIC;
  signal \r_data_b0[24]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[24]_i_2_n_0\ : STD_LOGIC;
  signal \r_data_b0[25]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[25]_i_2_n_0\ : STD_LOGIC;
  signal \r_data_b0[26]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[26]_i_2_n_0\ : STD_LOGIC;
  signal \r_data_b0[27]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[27]_i_2_n_0\ : STD_LOGIC;
  signal \r_data_b0[28]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[28]_i_2_n_0\ : STD_LOGIC;
  signal \r_data_b0[29]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[29]_i_2_n_0\ : STD_LOGIC;
  signal \r_data_b0[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[30]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[30]_i_2_n_0\ : STD_LOGIC;
  signal \r_data_b0[31]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[31]_i_2_n_0\ : STD_LOGIC;
  signal \r_data_b0[31]_i_3_n_0\ : STD_LOGIC;
  signal \r_data_b0[31]_i_4_n_0\ : STD_LOGIC;
  signal \r_data_b0[31]_i_5_n_0\ : STD_LOGIC;
  signal \r_data_b0[31]_i_6_n_0\ : STD_LOGIC;
  signal \r_data_b0[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_data_b0[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_b0[9]_i_1_n_0\ : STD_LOGIC;
  signal \^r_valid\ : STD_LOGIC;
  signal r_valid_b0 : STD_LOGIC;
  signal spi_csn_i_1_n_0 : STD_LOGIC;
  signal spi_mosi_i_10_n_0 : STD_LOGIC;
  signal spi_mosi_i_11_n_0 : STD_LOGIC;
  signal spi_mosi_i_12_n_0 : STD_LOGIC;
  signal spi_mosi_i_13_n_0 : STD_LOGIC;
  signal spi_mosi_i_14_n_0 : STD_LOGIC;
  signal spi_mosi_i_15_n_0 : STD_LOGIC;
  signal spi_mosi_i_1_n_0 : STD_LOGIC;
  signal spi_mosi_i_8_n_0 : STD_LOGIC;
  signal spi_mosi_i_9_n_0 : STD_LOGIC;
  signal spi_mosi_reg_i_2_n_0 : STD_LOGIC;
  signal spi_mosi_reg_i_3_n_0 : STD_LOGIC;
  signal spi_mosi_reg_i_4_n_0 : STD_LOGIC;
  signal spi_mosi_reg_i_5_n_0 : STD_LOGIC;
  signal spi_mosi_reg_i_6_n_0 : STD_LOGIC;
  signal spi_mosi_reg_i_7_n_0 : STD_LOGIC;
  signal w_data_b0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal w_ready_i_1_n_0 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[0]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[2]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[3]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "s_idle:0001,s_cs:0010,s_data:0100,s_sync:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "s_idle:0001,s_cs:0010,s_data:0100,s_sync:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "s_idle:0001,s_cs:0010,s_data:0100,s_sync:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "s_idle:0001,s_cs:0010,s_data:0100,s_sync:1000";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_data_b0[24]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_data_b0[25]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_data_b0[26]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_data_b0[27]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_data_b0[28]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_data_b0[29]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_data_b0[30]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_data_b0[31]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_data_b0[31]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_data_b0[31]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of spi_csn_i_1 : label is "soft_lutpair7";
begin
  r_valid <= \^r_valid\;
\FSM_onehot_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[0]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[0]\
    );
\FSM_onehot_next_state_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => r_valid_b0,
      I1 => w_valid,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_next_state_reg[0]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[1]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[1]\
    );
\FSM_onehot_next_state_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => w_valid,
      O => \FSM_onehot_next_state_reg[1]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[2]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[2]\
    );
\FSM_onehot_next_state_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => cnt(6),
      I2 => cnt(5),
      I3 => \FSM_onehot_next_state_reg[3]_i_3_n_0\,
      I4 => clk_en,
      O => \FSM_onehot_next_state_reg[2]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[3]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[3]\
    );
\FSM_onehot_next_state_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => clk_en,
      I1 => \FSM_onehot_next_state_reg[3]_i_3_n_0\,
      I2 => cnt(5),
      I3 => cnt(6),
      O => \FSM_onehot_next_state_reg[3]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEEEEEE"
    )
        port map (
      I0 => clk_en,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => r_valid_b0,
      I3 => \^r_valid\,
      I4 => r_ready,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => next_state
    );
\FSM_onehot_next_state_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => cnt(7),
      I1 => cnt(3),
      I2 => cnt(2),
      I3 => cnt(0),
      I4 => cnt(4),
      I5 => cnt(1),
      O => \FSM_onehot_next_state_reg[3]_i_3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[0]\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => w_ready_i_1_n_0
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[1]\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => w_ready_i_1_n_0
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[2]\,
      Q => clk_en,
      R => w_ready_i_1_n_0
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[3]\,
      Q => r_valid_b0,
      R => w_ready_i_1_n_0
    );
clk_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_en,
      Q => clk_en_reg_n_0,
      R => w_ready_i_1_n_0
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_en,
      I1 => cnt(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => clk_en,
      I1 => cnt(1),
      I2 => cnt(0),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => clk_en,
      I1 => cnt(2),
      I2 => cnt(1),
      I3 => cnt(0),
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => clk_en,
      I1 => cnt(3),
      I2 => cnt(2),
      I3 => cnt(0),
      I4 => cnt(1),
      O => \cnt[3]_i_1_n_0\
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => clk_en,
      I1 => cnt(4),
      I2 => cnt(3),
      I3 => cnt(1),
      I4 => cnt(0),
      I5 => cnt(2),
      O => \cnt[4]_i_1_n_0\
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => clk_en,
      I1 => cnt(5),
      I2 => \cnt[5]_i_2_n_0\,
      O => \cnt[5]_i_1_n_0\
    );
\cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt(4),
      I1 => cnt(2),
      I2 => cnt(0),
      I3 => cnt(1),
      I4 => cnt(3),
      O => \cnt[5]_i_2_n_0\
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => clk_en,
      I1 => cnt(6),
      I2 => \cnt[7]_i_3_n_0\,
      O => \cnt[6]_i_1_n_0\
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => clk_en,
      O => cnt_0
    );
\cnt[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => clk_en,
      I1 => cnt(7),
      I2 => cnt(6),
      I3 => \cnt[7]_i_3_n_0\,
      O => \cnt[7]_i_2_n_0\
    );
\cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt(5),
      I1 => cnt(3),
      I2 => cnt(1),
      I3 => cnt(0),
      I4 => cnt(2),
      I5 => cnt(4),
      O => \cnt[7]_i_3_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_0,
      D => \cnt[0]_i_1_n_0\,
      Q => cnt(0),
      R => w_ready_i_1_n_0
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_0,
      D => \cnt[1]_i_1_n_0\,
      Q => cnt(1),
      R => w_ready_i_1_n_0
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_0,
      D => \cnt[2]_i_1_n_0\,
      Q => cnt(2),
      R => w_ready_i_1_n_0
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_0,
      D => \cnt[3]_i_1_n_0\,
      Q => cnt(3),
      R => w_ready_i_1_n_0
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_0,
      D => \cnt[4]_i_1_n_0\,
      Q => cnt(4),
      R => w_ready_i_1_n_0
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_0,
      D => \cnt[5]_i_1_n_0\,
      Q => cnt(5),
      R => w_ready_i_1_n_0
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_0,
      D => \cnt[6]_i_1_n_0\,
      Q => cnt(6),
      R => w_ready_i_1_n_0
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cnt_0,
      D => \cnt[7]_i_2_n_0\,
      Q => cnt(7),
      R => w_ready_i_1_n_0
    );
\r_data_b0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[7]_i_2_n_0\,
      I4 => \r_data_b0[24]_i_2_n_0\,
      I5 => r_data_b0(0),
      O => \r_data_b0[0]_i_1_n_0\
    );
\r_data_b0[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[15]_i_2_n_0\,
      I4 => \r_data_b0[26]_i_2_n_0\,
      I5 => r_data_b0(10),
      O => \r_data_b0[10]_i_1_n_0\
    );
\r_data_b0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[15]_i_2_n_0\,
      I4 => \r_data_b0[27]_i_2_n_0\,
      I5 => r_data_b0(11),
      O => \r_data_b0[11]_i_1_n_0\
    );
\r_data_b0[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[15]_i_2_n_0\,
      I4 => \r_data_b0[28]_i_2_n_0\,
      I5 => r_data_b0(12),
      O => \r_data_b0[12]_i_1_n_0\
    );
\r_data_b0[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[15]_i_2_n_0\,
      I4 => \r_data_b0[29]_i_2_n_0\,
      I5 => r_data_b0(13),
      O => \r_data_b0[13]_i_1_n_0\
    );
\r_data_b0[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[15]_i_2_n_0\,
      I4 => \r_data_b0[30]_i_2_n_0\,
      I5 => r_data_b0(14),
      O => \r_data_b0[14]_i_1_n_0\
    );
\r_data_b0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[15]_i_2_n_0\,
      I4 => \r_data_b0[31]_i_4_n_0\,
      I5 => r_data_b0(15),
      O => \r_data_b0[15]_i_1_n_0\
    );
\r_data_b0[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFD"
    )
        port map (
      I0 => cnt(4),
      I1 => cnt(6),
      I2 => cnt(5),
      I3 => cnt(7),
      I4 => cnt(3),
      I5 => \r_data_b0[31]_i_6_n_0\,
      O => \r_data_b0[15]_i_2_n_0\
    );
\r_data_b0[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[23]_i_2_n_0\,
      I4 => \r_data_b0[24]_i_2_n_0\,
      I5 => r_data_b0(16),
      O => \r_data_b0[16]_i_1_n_0\
    );
\r_data_b0[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[23]_i_2_n_0\,
      I4 => \r_data_b0[25]_i_2_n_0\,
      I5 => r_data_b0(17),
      O => \r_data_b0[17]_i_1_n_0\
    );
\r_data_b0[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[23]_i_2_n_0\,
      I4 => \r_data_b0[26]_i_2_n_0\,
      I5 => r_data_b0(18),
      O => \r_data_b0[18]_i_1_n_0\
    );
\r_data_b0[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[23]_i_2_n_0\,
      I4 => \r_data_b0[27]_i_2_n_0\,
      I5 => r_data_b0(19),
      O => \r_data_b0[19]_i_1_n_0\
    );
\r_data_b0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[7]_i_2_n_0\,
      I4 => \r_data_b0[25]_i_2_n_0\,
      I5 => r_data_b0(1),
      O => \r_data_b0[1]_i_1_n_0\
    );
\r_data_b0[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[23]_i_2_n_0\,
      I4 => \r_data_b0[28]_i_2_n_0\,
      I5 => r_data_b0(20),
      O => \r_data_b0[20]_i_1_n_0\
    );
\r_data_b0[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[23]_i_2_n_0\,
      I4 => \r_data_b0[29]_i_2_n_0\,
      I5 => r_data_b0(21),
      O => \r_data_b0[21]_i_1_n_0\
    );
\r_data_b0[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[23]_i_2_n_0\,
      I4 => \r_data_b0[30]_i_2_n_0\,
      I5 => r_data_b0(22),
      O => \r_data_b0[22]_i_1_n_0\
    );
\r_data_b0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[23]_i_2_n_0\,
      I4 => \r_data_b0[31]_i_4_n_0\,
      I5 => r_data_b0(23),
      O => \r_data_b0[23]_i_1_n_0\
    );
\r_data_b0[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEBF"
    )
        port map (
      I0 => cnt(6),
      I1 => cnt(4),
      I2 => \r_data_b0[31]_i_6_n_0\,
      I3 => cnt(3),
      I4 => cnt(5),
      I5 => cnt(7),
      O => \r_data_b0[23]_i_2_n_0\
    );
\r_data_b0[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[31]_i_3_n_0\,
      I4 => \r_data_b0[24]_i_2_n_0\,
      I5 => r_data_b0(24),
      O => \r_data_b0[24]_i_1_n_0\
    );
\r_data_b0[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(0),
      I2 => cnt(1),
      O => \r_data_b0[24]_i_2_n_0\
    );
\r_data_b0[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[31]_i_3_n_0\,
      I4 => \r_data_b0[25]_i_2_n_0\,
      I5 => r_data_b0(25),
      O => \r_data_b0[25]_i_1_n_0\
    );
\r_data_b0[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(0),
      I2 => cnt(1),
      O => \r_data_b0[25]_i_2_n_0\
    );
\r_data_b0[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[31]_i_3_n_0\,
      I4 => \r_data_b0[26]_i_2_n_0\,
      I5 => r_data_b0(26),
      O => \r_data_b0[26]_i_1_n_0\
    );
\r_data_b0[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(0),
      I2 => cnt(1),
      O => \r_data_b0[26]_i_2_n_0\
    );
\r_data_b0[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[31]_i_3_n_0\,
      I4 => \r_data_b0[27]_i_2_n_0\,
      I5 => r_data_b0(27),
      O => \r_data_b0[27]_i_1_n_0\
    );
\r_data_b0[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(0),
      I2 => cnt(1),
      O => \r_data_b0[27]_i_2_n_0\
    );
\r_data_b0[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[31]_i_3_n_0\,
      I4 => \r_data_b0[28]_i_2_n_0\,
      I5 => r_data_b0(28),
      O => \r_data_b0[28]_i_1_n_0\
    );
\r_data_b0[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(0),
      I2 => cnt(1),
      O => \r_data_b0[28]_i_2_n_0\
    );
\r_data_b0[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[31]_i_3_n_0\,
      I4 => \r_data_b0[29]_i_2_n_0\,
      I5 => r_data_b0(29),
      O => \r_data_b0[29]_i_1_n_0\
    );
\r_data_b0[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(0),
      I2 => cnt(1),
      O => \r_data_b0[29]_i_2_n_0\
    );
\r_data_b0[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[7]_i_2_n_0\,
      I4 => \r_data_b0[26]_i_2_n_0\,
      I5 => r_data_b0(2),
      O => \r_data_b0[2]_i_1_n_0\
    );
\r_data_b0[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[31]_i_3_n_0\,
      I4 => \r_data_b0[30]_i_2_n_0\,
      I5 => r_data_b0(30),
      O => \r_data_b0[30]_i_1_n_0\
    );
\r_data_b0[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(0),
      I2 => cnt(1),
      O => \r_data_b0[30]_i_2_n_0\
    );
\r_data_b0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[31]_i_3_n_0\,
      I4 => \r_data_b0[31]_i_4_n_0\,
      I5 => r_data_b0(31),
      O => \r_data_b0[31]_i_1_n_0\
    );
\r_data_b0[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cnt(5),
      I1 => cnt(4),
      I2 => cnt(6),
      I3 => cnt(7),
      I4 => \r_data_b0[31]_i_5_n_0\,
      O => \r_data_b0[31]_i_2_n_0\
    );
\r_data_b0[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFE"
    )
        port map (
      I0 => cnt(6),
      I1 => cnt(4),
      I2 => cnt(5),
      I3 => cnt(7),
      I4 => cnt(3),
      I5 => \r_data_b0[31]_i_6_n_0\,
      O => \r_data_b0[31]_i_3_n_0\
    );
\r_data_b0[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(0),
      I2 => cnt(1),
      O => \r_data_b0[31]_i_4_n_0\
    );
\r_data_b0[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(3),
      I2 => cnt(0),
      I3 => cnt(1),
      O => \r_data_b0[31]_i_5_n_0\
    );
\r_data_b0[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(0),
      I2 => cnt(2),
      O => \r_data_b0[31]_i_6_n_0\
    );
\r_data_b0[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[7]_i_2_n_0\,
      I4 => \r_data_b0[27]_i_2_n_0\,
      I5 => r_data_b0(3),
      O => \r_data_b0[3]_i_1_n_0\
    );
\r_data_b0[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[7]_i_2_n_0\,
      I4 => \r_data_b0[28]_i_2_n_0\,
      I5 => r_data_b0(4),
      O => \r_data_b0[4]_i_1_n_0\
    );
\r_data_b0[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[7]_i_2_n_0\,
      I4 => \r_data_b0[29]_i_2_n_0\,
      I5 => r_data_b0(5),
      O => \r_data_b0[5]_i_1_n_0\
    );
\r_data_b0[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[7]_i_2_n_0\,
      I4 => \r_data_b0[30]_i_2_n_0\,
      I5 => r_data_b0(6),
      O => \r_data_b0[6]_i_1_n_0\
    );
\r_data_b0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[7]_i_2_n_0\,
      I4 => \r_data_b0[31]_i_4_n_0\,
      I5 => r_data_b0(7),
      O => \r_data_b0[7]_i_1_n_0\
    );
\r_data_b0[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFDF"
    )
        port map (
      I0 => cnt(3),
      I1 => \r_data_b0[31]_i_6_n_0\,
      I2 => cnt(4),
      I3 => cnt(6),
      I4 => cnt(5),
      I5 => cnt(7),
      O => \r_data_b0[7]_i_2_n_0\
    );
\r_data_b0[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[15]_i_2_n_0\,
      I4 => \r_data_b0[24]_i_2_n_0\,
      I5 => r_data_b0(8),
      O => \r_data_b0[8]_i_1_n_0\
    );
\r_data_b0[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_miso,
      I1 => clk_en,
      I2 => \r_data_b0[31]_i_2_n_0\,
      I3 => \r_data_b0[15]_i_2_n_0\,
      I4 => \r_data_b0[25]_i_2_n_0\,
      I5 => r_data_b0(9),
      O => \r_data_b0[9]_i_1_n_0\
    );
\r_data_b0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[0]_i_1_n_0\,
      Q => r_data_b0(0),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[10]_i_1_n_0\,
      Q => r_data_b0(10),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[11]_i_1_n_0\,
      Q => r_data_b0(11),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[12]_i_1_n_0\,
      Q => r_data_b0(12),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[13]_i_1_n_0\,
      Q => r_data_b0(13),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[14]_i_1_n_0\,
      Q => r_data_b0(14),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[15]_i_1_n_0\,
      Q => r_data_b0(15),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[16]_i_1_n_0\,
      Q => r_data_b0(16),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[17]_i_1_n_0\,
      Q => r_data_b0(17),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[18]_i_1_n_0\,
      Q => r_data_b0(18),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[19]_i_1_n_0\,
      Q => r_data_b0(19),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[1]_i_1_n_0\,
      Q => r_data_b0(1),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[20]_i_1_n_0\,
      Q => r_data_b0(20),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[21]_i_1_n_0\,
      Q => r_data_b0(21),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[22]_i_1_n_0\,
      Q => r_data_b0(22),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[23]_i_1_n_0\,
      Q => r_data_b0(23),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[24]_i_1_n_0\,
      Q => r_data_b0(24),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[25]_i_1_n_0\,
      Q => r_data_b0(25),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[26]_i_1_n_0\,
      Q => r_data_b0(26),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[27]_i_1_n_0\,
      Q => r_data_b0(27),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[28]_i_1_n_0\,
      Q => r_data_b0(28),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[29]_i_1_n_0\,
      Q => r_data_b0(29),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[2]_i_1_n_0\,
      Q => r_data_b0(2),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[30]_i_1_n_0\,
      Q => r_data_b0(30),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[31]_i_1_n_0\,
      Q => r_data_b0(31),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[3]_i_1_n_0\,
      Q => r_data_b0(3),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[4]_i_1_n_0\,
      Q => r_data_b0(4),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[5]_i_1_n_0\,
      Q => r_data_b0(5),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[6]_i_1_n_0\,
      Q => r_data_b0(6),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[7]_i_1_n_0\,
      Q => r_data_b0(7),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[8]_i_1_n_0\,
      Q => r_data_b0(8),
      R => w_ready_i_1_n_0
    );
\r_data_b0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_data_b0[9]_i_1_n_0\,
      Q => r_data_b0(9),
      R => w_ready_i_1_n_0
    );
\r_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(0),
      Q => r_data(0),
      R => w_ready_i_1_n_0
    );
\r_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(10),
      Q => r_data(10),
      R => w_ready_i_1_n_0
    );
\r_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(11),
      Q => r_data(11),
      R => w_ready_i_1_n_0
    );
\r_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(12),
      Q => r_data(12),
      R => w_ready_i_1_n_0
    );
\r_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(13),
      Q => r_data(13),
      R => w_ready_i_1_n_0
    );
\r_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(14),
      Q => r_data(14),
      R => w_ready_i_1_n_0
    );
\r_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(15),
      Q => r_data(15),
      R => w_ready_i_1_n_0
    );
\r_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(16),
      Q => r_data(16),
      R => w_ready_i_1_n_0
    );
\r_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(17),
      Q => r_data(17),
      R => w_ready_i_1_n_0
    );
\r_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(18),
      Q => r_data(18),
      R => w_ready_i_1_n_0
    );
\r_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(19),
      Q => r_data(19),
      R => w_ready_i_1_n_0
    );
\r_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(1),
      Q => r_data(1),
      R => w_ready_i_1_n_0
    );
\r_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(20),
      Q => r_data(20),
      R => w_ready_i_1_n_0
    );
\r_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(21),
      Q => r_data(21),
      R => w_ready_i_1_n_0
    );
\r_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(22),
      Q => r_data(22),
      R => w_ready_i_1_n_0
    );
\r_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(23),
      Q => r_data(23),
      R => w_ready_i_1_n_0
    );
\r_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(24),
      Q => r_data(24),
      R => w_ready_i_1_n_0
    );
\r_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(25),
      Q => r_data(25),
      R => w_ready_i_1_n_0
    );
\r_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(26),
      Q => r_data(26),
      R => w_ready_i_1_n_0
    );
\r_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(27),
      Q => r_data(27),
      R => w_ready_i_1_n_0
    );
\r_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(28),
      Q => r_data(28),
      R => w_ready_i_1_n_0
    );
\r_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(29),
      Q => r_data(29),
      R => w_ready_i_1_n_0
    );
\r_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(2),
      Q => r_data(2),
      R => w_ready_i_1_n_0
    );
\r_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(30),
      Q => r_data(30),
      R => w_ready_i_1_n_0
    );
\r_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(31),
      Q => r_data(31),
      R => w_ready_i_1_n_0
    );
\r_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(3),
      Q => r_data(3),
      R => w_ready_i_1_n_0
    );
\r_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(4),
      Q => r_data(4),
      R => w_ready_i_1_n_0
    );
\r_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(5),
      Q => r_data(5),
      R => w_ready_i_1_n_0
    );
\r_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(6),
      Q => r_data(6),
      R => w_ready_i_1_n_0
    );
\r_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(7),
      Q => r_data(7),
      R => w_ready_i_1_n_0
    );
\r_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(8),
      Q => r_data(8),
      R => w_ready_i_1_n_0
    );
\r_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => r_valid_b0,
      D => r_data_b0(9),
      Q => r_data(9),
      R => w_ready_i_1_n_0
    );
r_valid_b0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => r_valid_b0,
      Q => \^r_valid\,
      R => w_ready_i_1_n_0
    );
spi_clk_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_en_reg_n_0,
      I1 => clk,
      O => spi_clk
    );
spi_csn_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => r_valid_b0,
      O => spi_csn_i_1_n_0
    );
spi_csn_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => spi_csn_i_1_n_0,
      Q => spi_csn,
      S => w_ready_i_1_n_0
    );
spi_mosi_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAAAEA"
    )
        port map (
      I0 => spi_csn_i_1_n_0,
      I1 => clk_en,
      I2 => spi_mosi_reg_i_2_n_0,
      I3 => cnt(4),
      I4 => spi_mosi_reg_i_3_n_0,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => spi_mosi_i_1_n_0
    );
spi_mosi_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => w_data_b0(20),
      I1 => w_data_b0(21),
      I2 => cnt(1),
      I3 => w_data_b0(22),
      I4 => cnt(0),
      I5 => w_data_b0(23),
      O => spi_mosi_i_10_n_0
    );
spi_mosi_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => w_data_b0(16),
      I1 => w_data_b0(17),
      I2 => cnt(1),
      I3 => w_data_b0(18),
      I4 => cnt(0),
      I5 => w_data_b0(19),
      O => spi_mosi_i_11_n_0
    );
spi_mosi_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => w_data_b0(12),
      I1 => w_data_b0(13),
      I2 => cnt(1),
      I3 => w_data_b0(14),
      I4 => cnt(0),
      I5 => w_data_b0(15),
      O => spi_mosi_i_12_n_0
    );
spi_mosi_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => w_data_b0(8),
      I1 => w_data_b0(9),
      I2 => cnt(1),
      I3 => w_data_b0(10),
      I4 => cnt(0),
      I5 => w_data_b0(11),
      O => spi_mosi_i_13_n_0
    );
spi_mosi_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => w_data_b0(4),
      I1 => w_data_b0(5),
      I2 => cnt(1),
      I3 => w_data_b0(6),
      I4 => cnt(0),
      I5 => w_data_b0(7),
      O => spi_mosi_i_14_n_0
    );
spi_mosi_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => w_data_b0(0),
      I1 => w_data_b0(1),
      I2 => cnt(1),
      I3 => w_data_b0(2),
      I4 => cnt(0),
      I5 => w_data_b0(3),
      O => spi_mosi_i_15_n_0
    );
spi_mosi_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => w_data_b0(28),
      I1 => w_data_b0(29),
      I2 => cnt(1),
      I3 => w_data_b0(30),
      I4 => cnt(0),
      I5 => w_data_b0(31),
      O => spi_mosi_i_8_n_0
    );
spi_mosi_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => w_data_b0(24),
      I1 => w_data_b0(25),
      I2 => cnt(1),
      I3 => w_data_b0(26),
      I4 => cnt(0),
      I5 => w_data_b0(27),
      O => spi_mosi_i_9_n_0
    );
spi_mosi_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => spi_mosi_i_1_n_0,
      Q => spi_mosi,
      S => w_ready_i_1_n_0
    );
spi_mosi_reg_i_2: unisim.vcomponents.MUXF8
     port map (
      I0 => spi_mosi_reg_i_4_n_0,
      I1 => spi_mosi_reg_i_5_n_0,
      O => spi_mosi_reg_i_2_n_0,
      S => cnt(3)
    );
spi_mosi_reg_i_3: unisim.vcomponents.MUXF8
     port map (
      I0 => spi_mosi_reg_i_6_n_0,
      I1 => spi_mosi_reg_i_7_n_0,
      O => spi_mosi_reg_i_3_n_0,
      S => cnt(3)
    );
spi_mosi_reg_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => spi_mosi_i_8_n_0,
      I1 => spi_mosi_i_9_n_0,
      O => spi_mosi_reg_i_4_n_0,
      S => cnt(2)
    );
spi_mosi_reg_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => spi_mosi_i_10_n_0,
      I1 => spi_mosi_i_11_n_0,
      O => spi_mosi_reg_i_5_n_0,
      S => cnt(2)
    );
spi_mosi_reg_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => spi_mosi_i_12_n_0,
      I1 => spi_mosi_i_13_n_0,
      O => spi_mosi_reg_i_6_n_0,
      S => cnt(2)
    );
spi_mosi_reg_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => spi_mosi_i_14_n_0,
      I1 => spi_mosi_i_15_n_0,
      O => spi_mosi_reg_i_7_n_0,
      S => cnt(2)
    );
\w_data_b0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(0),
      Q => w_data_b0(0),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(10),
      Q => w_data_b0(10),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(11),
      Q => w_data_b0(11),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(12),
      Q => w_data_b0(12),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(13),
      Q => w_data_b0(13),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(14),
      Q => w_data_b0(14),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(15),
      Q => w_data_b0(15),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(16),
      Q => w_data_b0(16),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(17),
      Q => w_data_b0(17),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(18),
      Q => w_data_b0(18),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(19),
      Q => w_data_b0(19),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(1),
      Q => w_data_b0(1),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(20),
      Q => w_data_b0(20),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(21),
      Q => w_data_b0(21),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(22),
      Q => w_data_b0(22),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(23),
      Q => w_data_b0(23),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(24),
      Q => w_data_b0(24),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(25),
      Q => w_data_b0(25),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(26),
      Q => w_data_b0(26),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(27),
      Q => w_data_b0(27),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(28),
      Q => w_data_b0(28),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(29),
      Q => w_data_b0(29),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(2),
      Q => w_data_b0(2),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(30),
      Q => w_data_b0(30),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(31),
      Q => w_data_b0(31),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(3),
      Q => w_data_b0(3),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(4),
      Q => w_data_b0(4),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(5),
      Q => w_data_b0(5),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(6),
      Q => w_data_b0(6),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(7),
      Q => w_data_b0(7),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(8),
      Q => w_data_b0(8),
      R => w_ready_i_1_n_0
    );
\w_data_b0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[0]\,
      D => w_data(9),
      Q => w_data_b0(9),
      R => w_ready_i_1_n_0
    );
w_ready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => w_ready_i_1_n_0
    );
w_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => w_ready,
      R => w_ready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_spi_master_1_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_bd_spi_master_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_bd_spi_master_1_0 : entity is "top_bd_spi_master_1_0,spi_master,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_bd_spi_master_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_bd_spi_master_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_bd_spi_master_1_0 : entity is "spi_master,Vivado 2020.1";
end top_bd_spi_master_1_0;

architecture STRUCTURE of top_bd_spi_master_1_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute x_interface_parameter of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of spi_clk : signal is "xilinx.com:signal:clock:1.0 spi_clk CLK";
  attribute x_interface_parameter of spi_clk : signal is "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN top_bd_spi_master_1_0_spi_clk, INSERT_VIP 0";
begin
U0: entity work.top_bd_spi_master_1_0_spi_master
     port map (
      clk => clk,
      r_data(31 downto 0) => r_data(31 downto 0),
      r_ready => r_ready,
      r_valid => r_valid,
      rstn => rstn,
      spi_clk => spi_clk,
      spi_csn => spi_csn,
      spi_miso => spi_miso,
      spi_mosi => spi_mosi,
      w_data(31 downto 0) => w_data(31 downto 0),
      w_ready => w_ready,
      w_valid => w_valid
    );
end STRUCTURE;
