-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Jun 16 14:26:25 2021
-- Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_leds_display_0_0/top_bd_leds_display_0_0_sim_netlist.vhdl
-- Design      : top_bd_leds_display_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_leds_display_0_0_leds_display is
  port (
    io_exp_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    io_exp_1 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    test_results : in STD_LOGIC_VECTOR ( 24 downto 0 );
    clk : in STD_LOGIC;
    test_done : in STD_LOGIC_VECTOR ( 23 downto 0 );
    clk_slow : in STD_LOGIC;
    board_started : in STD_LOGIC;
    rstn : in STD_LOGIC;
    sw_not_programmed : in STD_LOGIC;
    shut_down : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_bd_leds_display_0_0_leds_display : entity is "leds_display";
end top_bd_leds_display_0_0_leds_display;

architecture STRUCTURE of top_bd_leds_display_0_0_leds_display is
  signal \io_exp_0[15]_i_1_n_0\ : STD_LOGIC;
  signal \io_exp_0[7]_i_1_n_0\ : STD_LOGIC;
  signal \io_exp_0[7]_i_2_n_0\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_1_in0 : STD_LOGIC;
  signal p_20_in : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal p_23_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_26_in : STD_LOGIC;
  signal p_28_in : STD_LOGIC;
  signal p_29_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_2_in0 : STD_LOGIC;
  signal p_31_in : STD_LOGIC;
  signal p_32_in : STD_LOGIC;
  signal p_34_in : STD_LOGIC;
  signal p_35_in : STD_LOGIC;
  signal p_37_in : STD_LOGIC;
  signal p_38_in : STD_LOGIC;
  signal p_40_in : STD_LOGIC;
  signal p_41_in : STD_LOGIC;
  signal p_43_in : STD_LOGIC;
  signal p_44_in : STD_LOGIC;
  signal p_46_in : STD_LOGIC;
  signal p_47_in : STD_LOGIC;
  signal p_49_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_51_in : STD_LOGIC_VECTOR ( 10 to 10 );
  signal p_5_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal \reg_leds[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[11]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[13]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[18]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[24]_i_2_n_0\ : STD_LOGIC;
  signal \reg_leds[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds[9]_i_1_n_0\ : STD_LOGIC;
  signal \reg_leds__0\ : STD_LOGIC_VECTOR ( 6 to 6 );
  signal reg_leds_n_0 : STD_LOGIC;
  signal \reg_leds_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[15]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[23]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[24]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_leds_reg_n_0_[9]\ : STD_LOGIC;
  signal \reg_test_done_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_test_done_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg_test_done_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg_test_done_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg_test_done_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg_test_done_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg_test_done_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg_test_done_reg_n_0_[24]\ : STD_LOGIC;
  signal \reg_test_results[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg_test_results_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_test_results_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg_test_results_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg_test_results_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg_test_results_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg_test_results_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg_test_results_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg_test_results_reg_n_0_[24]\ : STD_LOGIC;
begin
\io_exp_0[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => shut_down,
      I1 => rstn,
      O => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_0[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      I1 => shut_down,
      O => \io_exp_0[7]_i_1_n_0\
    );
\io_exp_0[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shut_down,
      O => \io_exp_0[7]_i_2_n_0\
    );
\io_exp_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[8]\,
      Q => io_exp_0(0),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[12]\,
      Q => io_exp_0(10),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[13]\,
      Q => io_exp_0(11),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[15]\,
      Q => io_exp_0(12),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[4]\,
      Q => io_exp_0(13),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[14]\,
      Q => io_exp_0(14),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[6]\,
      Q => io_exp_0(15),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[11]\,
      Q => io_exp_0(1),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[7]\,
      Q => io_exp_0(2),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[2]\,
      Q => io_exp_0(3),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[5]\,
      Q => io_exp_0(4),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[0]\,
      Q => io_exp_0(5),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => \io_exp_0[7]_i_2_n_0\,
      D => \reg_leds_reg_n_0_[10]\,
      Q => io_exp_0(6),
      R => \io_exp_0[7]_i_1_n_0\
    );
\io_exp_0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => \io_exp_0[7]_i_2_n_0\,
      D => \reg_leds_reg_n_0_[9]\,
      Q => io_exp_0(7),
      R => \io_exp_0[7]_i_1_n_0\
    );
\io_exp_0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[3]\,
      Q => io_exp_0(8),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => p_1_in0,
      Q => io_exp_0(9),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[19]\,
      Q => io_exp_1(0),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[21]\,
      Q => io_exp_1(7),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[17]\,
      Q => io_exp_1(8),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[18]\,
      Q => io_exp_1(1),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[22]\,
      Q => io_exp_1(2),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[20]\,
      Q => io_exp_1(3),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => \reg_leds_reg_n_0_[23]\,
      Q => io_exp_1(4),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => board_started,
      D => p_2_in0,
      Q => io_exp_1(5),
      R => \io_exp_0[15]_i_1_n_0\
    );
\io_exp_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_slow,
      CE => \io_exp_0[7]_i_2_n_0\,
      D => \reg_leds_reg_n_0_[24]\,
      Q => io_exp_1(6),
      R => \io_exp_0[7]_i_1_n_0\
    );
reg_leds: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D5"
    )
        port map (
      I0 => rstn,
      I1 => sw_not_programmed,
      I2 => board_started,
      I3 => shut_down,
      O => reg_leds_n_0
    );
\reg_leds[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \reg_test_results_reg_n_0_[0]\,
      I1 => \reg_test_done_reg_n_0_[0]\,
      I2 => \reg_leds_reg_n_0_[0]\,
      O => \reg_leds[0]_i_1_n_0\
    );
\reg_leds[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_31_in,
      I1 => p_29_in,
      I2 => \reg_leds_reg_n_0_[11]\,
      O => \reg_leds[11]_i_1_n_0\
    );
\reg_leds[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_34_in,
      I1 => p_32_in,
      I2 => \reg_leds_reg_n_0_[12]\,
      O => \reg_leds[12]_i_1_n_0\
    );
\reg_leds[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_37_in,
      I1 => p_35_in,
      I2 => \reg_leds_reg_n_0_[13]\,
      O => \reg_leds[13]_i_1_n_0\
    );
\reg_leds[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_40_in,
      I1 => p_38_in,
      I2 => \reg_leds_reg_n_0_[14]\,
      O => \reg_leds[14]_i_1_n_0\
    );
\reg_leds[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_43_in,
      I1 => p_41_in,
      I2 => \reg_leds_reg_n_0_[15]\,
      O => \reg_leds[15]_i_1_n_0\
    );
\reg_leds[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_46_in,
      I1 => p_44_in,
      I2 => p_2_in0,
      O => \reg_leds[16]_i_1_n_0\
    );
\reg_leds[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \reg_test_results_reg_n_0_[17]\,
      I1 => \reg_test_done_reg_n_0_[17]\,
      I2 => \reg_leds_reg_n_0_[17]\,
      O => \reg_leds[17]_i_1_n_0\
    );
\reg_leds[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \reg_test_results_reg_n_0_[18]\,
      I1 => \reg_test_done_reg_n_0_[18]\,
      I2 => \reg_leds_reg_n_0_[18]\,
      O => \reg_leds[18]_i_1_n_0\
    );
\reg_leds[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \reg_test_results_reg_n_0_[19]\,
      I1 => \reg_test_done_reg_n_0_[19]\,
      I2 => \reg_leds_reg_n_0_[19]\,
      O => \reg_leds[19]_i_1_n_0\
    );
\reg_leds[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_4_in,
      I1 => p_2_in,
      I2 => p_1_in0,
      O => \reg_leds[1]_i_1_n_0\
    );
\reg_leds[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \reg_test_results_reg_n_0_[20]\,
      I1 => \reg_test_done_reg_n_0_[20]\,
      I2 => \reg_leds_reg_n_0_[20]\,
      O => \reg_leds[20]_i_1_n_0\
    );
\reg_leds[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \reg_test_results_reg_n_0_[21]\,
      I1 => \reg_test_done_reg_n_0_[21]\,
      I2 => \reg_leds_reg_n_0_[21]\,
      O => \reg_leds[21]_i_1_n_0\
    );
\reg_leds[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \reg_test_results_reg_n_0_[22]\,
      I1 => \reg_test_done_reg_n_0_[22]\,
      I2 => \reg_leds_reg_n_0_[22]\,
      O => \reg_leds[22]_i_1_n_0\
    );
\reg_leds[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_49_in,
      I1 => p_47_in,
      I2 => \reg_leds_reg_n_0_[23]\,
      O => \reg_leds[23]_i_1_n_0\
    );
\reg_leds[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => board_started,
      I1 => shut_down,
      O => \reg_leds__0\(6)
    );
\reg_leds[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \reg_test_results_reg_n_0_[24]\,
      I1 => \reg_test_done_reg_n_0_[24]\,
      I2 => \reg_leds_reg_n_0_[24]\,
      O => \reg_leds[24]_i_2_n_0\
    );
\reg_leds[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_7_in,
      I1 => p_5_in,
      I2 => \reg_leds_reg_n_0_[2]\,
      O => \reg_leds[2]_i_1_n_0\
    );
\reg_leds[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_10_in,
      I1 => p_8_in,
      I2 => \reg_leds_reg_n_0_[3]\,
      O => \reg_leds[3]_i_1_n_0\
    );
\reg_leds[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_13_in,
      I1 => p_11_in,
      I2 => \reg_leds_reg_n_0_[4]\,
      O => \reg_leds[4]_i_1_n_0\
    );
\reg_leds[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_16_in,
      I1 => p_14_in,
      I2 => \reg_leds_reg_n_0_[5]\,
      O => \reg_leds[5]_i_1_n_0\
    );
\reg_leds[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_19_in,
      I1 => p_17_in,
      I2 => \reg_leds_reg_n_0_[6]\,
      O => \reg_leds[6]_i_1_n_0\
    );
\reg_leds[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_22_in,
      I1 => p_20_in,
      I2 => \reg_leds_reg_n_0_[7]\,
      O => \reg_leds[7]_i_1_n_0\
    );
\reg_leds[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_25_in,
      I1 => p_23_in,
      I2 => \reg_leds_reg_n_0_[8]\,
      O => \reg_leds[8]_i_1_n_0\
    );
\reg_leds[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_28_in,
      I1 => p_26_in,
      I2 => \reg_leds_reg_n_0_[9]\,
      O => \reg_leds[9]_i_1_n_0\
    );
\reg_leds_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[0]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[0]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \io_exp_0[7]_i_2_n_0\,
      D => p_51_in(10),
      Q => \reg_leds_reg_n_0_[10]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[11]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[11]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[12]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[12]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[13]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[13]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[14]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[14]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[15]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[15]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[16]_i_1_n_0\,
      Q => p_2_in0,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[17]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[17]\,
      R => reg_leds_n_0
    );
\reg_leds_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[18]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[18]\,
      R => reg_leds_n_0
    );
\reg_leds_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[19]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[19]\,
      R => reg_leds_n_0
    );
\reg_leds_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[1]_i_1_n_0\,
      Q => p_1_in0,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[20]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[20]\,
      R => reg_leds_n_0
    );
\reg_leds_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[21]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[21]\,
      R => reg_leds_n_0
    );
\reg_leds_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[22]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[22]\,
      R => reg_leds_n_0
    );
\reg_leds_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[23]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[23]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[24]_i_2_n_0\,
      Q => \reg_leds_reg_n_0_[24]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[2]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[2]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[3]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[3]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[4]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[4]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[5]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[5]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[6]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[6]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[7]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[7]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[8]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[8]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_leds_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_slow,
      CE => \reg_leds__0\(6),
      D => \reg_leds[9]_i_1_n_0\,
      Q => \reg_leds_reg_n_0_[9]\,
      R => \io_exp_0[7]_i_1_n_0\
    );
\reg_test_done_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(0),
      Q => \reg_test_done_reg_n_0_[0]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(10),
      Q => p_29_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(11),
      Q => p_32_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(12),
      Q => p_35_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(13),
      Q => p_38_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(14),
      Q => p_41_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(15),
      Q => p_44_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(16),
      Q => \reg_test_done_reg_n_0_[17]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(17),
      Q => \reg_test_done_reg_n_0_[18]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(18),
      Q => \reg_test_done_reg_n_0_[19]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(1),
      Q => p_2_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(19),
      Q => \reg_test_done_reg_n_0_[20]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(20),
      Q => \reg_test_done_reg_n_0_[21]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(21),
      Q => \reg_test_done_reg_n_0_[22]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(22),
      Q => p_47_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(23),
      Q => \reg_test_done_reg_n_0_[24]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(2),
      Q => p_5_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(3),
      Q => p_8_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(4),
      Q => p_11_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(5),
      Q => p_14_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(6),
      Q => p_17_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(7),
      Q => p_20_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(8),
      Q => p_23_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_done_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_done(9),
      Q => p_26_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results[24]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(0),
      Q => \reg_test_results_reg_n_0_[0]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(10),
      Q => p_51_in(10),
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(11),
      Q => p_31_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(12),
      Q => p_34_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(13),
      Q => p_37_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(14),
      Q => p_40_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(15),
      Q => p_43_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(16),
      Q => p_46_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(17),
      Q => \reg_test_results_reg_n_0_[17]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(18),
      Q => \reg_test_results_reg_n_0_[18]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(19),
      Q => \reg_test_results_reg_n_0_[19]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(1),
      Q => p_4_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(20),
      Q => \reg_test_results_reg_n_0_[20]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(21),
      Q => \reg_test_results_reg_n_0_[21]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(22),
      Q => \reg_test_results_reg_n_0_[22]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(23),
      Q => p_49_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(24),
      Q => \reg_test_results_reg_n_0_[24]\,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(2),
      Q => p_7_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(3),
      Q => p_10_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(4),
      Q => p_13_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(5),
      Q => p_16_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(6),
      Q => p_19_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(7),
      Q => p_22_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(8),
      Q => p_25_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
\reg_test_results_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => test_results(9),
      Q => p_28_in,
      R => \reg_test_results[24]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_leds_display_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_bd_leds_display_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_bd_leds_display_0_0 : entity is "top_bd_leds_display_0_0,leds_display,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_bd_leds_display_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_bd_leds_display_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_bd_leds_display_0_0 : entity is "leds_display,Vivado 2020.1";
end top_bd_leds_display_0_0;

architecture STRUCTURE of top_bd_leds_display_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^io_exp_1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute x_interface_parameter of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  io_exp_1(15 downto 14) <= \^io_exp_1\(15 downto 14);
  io_exp_1(13) <= \<const0>\;
  io_exp_1(12) <= \<const0>\;
  io_exp_1(11) <= \<const0>\;
  io_exp_1(10) <= \<const0>\;
  io_exp_1(9) <= \<const0>\;
  io_exp_1(8) <= \<const0>\;
  io_exp_1(7 downto 6) <= \^io_exp_1\(7 downto 6);
  io_exp_1(5) <= \<const0>\;
  io_exp_1(4 downto 0) <= \^io_exp_1\(4 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.top_bd_leds_display_0_0_leds_display
     port map (
      board_started => board_started,
      clk => clk,
      clk_slow => clk_slow,
      io_exp_0(15 downto 0) => io_exp_0(15 downto 0),
      io_exp_1(8 downto 7) => \^io_exp_1\(15 downto 14),
      io_exp_1(6 downto 5) => \^io_exp_1\(7 downto 6),
      io_exp_1(4 downto 0) => \^io_exp_1\(4 downto 0),
      rstn => rstn,
      shut_down => shut_down,
      sw_not_programmed => sw_not_programmed,
      test_done(23 downto 10) => test_done(24 downto 11),
      test_done(9 downto 0) => test_done(9 downto 0),
      test_results(24 downto 0) => test_results(24 downto 0)
    );
end STRUCTURE;
