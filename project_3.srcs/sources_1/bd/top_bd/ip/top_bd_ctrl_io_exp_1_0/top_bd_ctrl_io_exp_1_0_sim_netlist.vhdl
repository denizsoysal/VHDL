-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Jun 16 11:20:02 2021
-- Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_ctrl_io_exp_1_0/top_bd_ctrl_io_exp_1_0_sim_netlist.vhdl
-- Design      : top_bd_ctrl_io_exp_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_ctrl_io_exp_1_0_ctrl_io_exp is
  port (
    w_data : out STD_LOGIC_VECTOR ( 17 downto 0 );
    r_ready : out STD_LOGIC;
    clk : in STD_LOGIC;
    leds_state : in STD_LOGIC_VECTOR ( 15 downto 0 );
    w_ready : in STD_LOGIC;
    rstn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_bd_ctrl_io_exp_1_0_ctrl_io_exp : entity is "ctrl_io_exp";
end top_bd_ctrl_io_exp_1_0_ctrl_io_exp;

architecture STRUCTURE of top_bd_ctrl_io_exp_1_0_ctrl_io_exp is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal in4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal init_done : STD_LOGIC;
  signal init_done_i_1_n_0 : STD_LOGIC;
  signal init_done_reg_n_0 : STD_LOGIC;
  signal leds_state_b0 : STD_LOGIC;
  signal w_data0 : STD_LOGIC;
  signal \w_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \w_data[9]_i_1_n_0\ : STD_LOGIC;
  signal w_valid_i_1_n_0 : STD_LOGIC;
  signal w_valid_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "s_idle:010,s_send:100,s_init:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "s_idle:010,s_send:100,s_init:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "s_idle:010,s_send:100,s_init:001";
  attribute SOFT_HLUTNM of \w_data[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \w_data[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \w_data[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \w_data[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \w_data[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \w_data[14]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \w_data[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \w_data[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \w_data[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \w_data[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \w_data[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w_data[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w_data[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \w_data[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \w_data[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \w_data[9]_i_1\ : label is "soft_lutpair5";
begin
\/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => leds_state_b0,
      I1 => init_done,
      I2 => w_data0,
      O => \/i__n_0\
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => leds_state_b0,
      I1 => init_done_reg_n_0,
      I2 => w_ready,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => init_done,
      I1 => leds_state_b0,
      I2 => w_ready,
      I3 => w_data0,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => leds_state_b0,
      I1 => init_done_reg_n_0,
      I2 => w_ready,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => init_done,
      S => w_valid_i_1_n_0
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => leds_state_b0,
      R => w_valid_i_1_n_0
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => w_data0,
      R => w_valid_i_1_n_0
    );
init_done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => init_done,
      I1 => init_done_reg_n_0,
      O => init_done_i_1_n_0
    );
init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => init_done_i_1_n_0,
      Q => init_done_reg_n_0,
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(0),
      Q => in4(0),
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(10),
      Q => in4(10),
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(11),
      Q => in4(11),
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(12),
      Q => in4(12),
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(13),
      Q => in4(13),
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(14),
      Q => in4(14),
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(15),
      Q => in4(15),
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(1),
      Q => in4(1),
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(2),
      Q => in4(2),
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(3),
      Q => in4(3),
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(4),
      Q => in4(4),
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(5),
      Q => in4(5),
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(6),
      Q => in4(6),
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(7),
      Q => in4(7),
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(8),
      Q => in4(8),
      R => w_valid_i_1_n_0
    );
\leds_state_b0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_state_b0,
      D => leds_state(9),
      Q => in4(9),
      R => w_valid_i_1_n_0
    );
r_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => '1',
      Q => r_ready,
      R => w_valid_i_1_n_0
    );
\w_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(0),
      O => \w_data[0]_i_1_n_0\
    );
\w_data[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(10),
      O => \w_data[10]_i_1_n_0\
    );
\w_data[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(11),
      O => \w_data[11]_i_1_n_0\
    );
\w_data[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(12),
      O => \w_data[12]_i_1_n_0\
    );
\w_data[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(13),
      O => \w_data[13]_i_1_n_0\
    );
\w_data[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(14),
      O => \w_data[14]_i_1_n_0\
    );
\w_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(15),
      O => \w_data[15]_i_1_n_0\
    );
\w_data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(1),
      O => \w_data[1]_i_1_n_0\
    );
\w_data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(2),
      O => \w_data[2]_i_1_n_0\
    );
\w_data[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(3),
      O => \w_data[3]_i_1_n_0\
    );
\w_data[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(4),
      O => \w_data[4]_i_1_n_0\
    );
\w_data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(5),
      O => \w_data[5]_i_1_n_0\
    );
\w_data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(6),
      O => \w_data[6]_i_1_n_0\
    );
\w_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(7),
      O => \w_data[7]_i_1_n_0\
    );
\w_data[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(8),
      O => \w_data[8]_i_1_n_0\
    );
\w_data[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_data0,
      I1 => in4(9),
      O => \w_data[9]_i_1_n_0\
    );
\w_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[0]_i_1_n_0\,
      Q => w_data(0),
      R => w_valid_i_1_n_0
    );
\w_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[10]_i_1_n_0\,
      Q => w_data(10),
      R => w_valid_i_1_n_0
    );
\w_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[11]_i_1_n_0\,
      Q => w_data(11),
      R => w_valid_i_1_n_0
    );
\w_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[12]_i_1_n_0\,
      Q => w_data(12),
      R => w_valid_i_1_n_0
    );
\w_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[13]_i_1_n_0\,
      Q => w_data(13),
      R => w_valid_i_1_n_0
    );
\w_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[14]_i_1_n_0\,
      Q => w_data(14),
      R => w_valid_i_1_n_0
    );
\w_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[15]_i_1_n_0\,
      Q => w_data(15),
      R => w_valid_i_1_n_0
    );
\w_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[1]_i_1_n_0\,
      Q => w_data(1),
      R => w_valid_i_1_n_0
    );
\w_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => w_data0,
      Q => w_data(16),
      R => w_valid_i_1_n_0
    );
\w_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[2]_i_1_n_0\,
      Q => w_data(2),
      R => w_valid_i_1_n_0
    );
\w_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[3]_i_1_n_0\,
      Q => w_data(3),
      R => w_valid_i_1_n_0
    );
\w_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[4]_i_1_n_0\,
      Q => w_data(4),
      R => w_valid_i_1_n_0
    );
\w_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[5]_i_1_n_0\,
      Q => w_data(5),
      R => w_valid_i_1_n_0
    );
\w_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[6]_i_1_n_0\,
      Q => w_data(6),
      R => w_valid_i_1_n_0
    );
\w_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[7]_i_1_n_0\,
      Q => w_data(7),
      R => w_valid_i_1_n_0
    );
\w_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[8]_i_1_n_0\,
      Q => w_data(8),
      R => w_valid_i_1_n_0
    );
\w_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => \w_data[9]_i_1_n_0\,
      Q => w_data(9),
      R => w_valid_i_1_n_0
    );
w_valid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => w_valid_i_1_n_0
    );
w_valid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => init_done,
      I1 => w_data0,
      O => w_valid_i_2_n_0
    );
w_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \/i__n_0\,
      D => w_valid_i_2_n_0,
      Q => w_data(17),
      R => w_valid_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_ctrl_io_exp_1_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_bd_ctrl_io_exp_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_bd_ctrl_io_exp_1_0 : entity is "top_bd_ctrl_io_exp_1_0,ctrl_io_exp,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_bd_ctrl_io_exp_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_bd_ctrl_io_exp_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_bd_ctrl_io_exp_1_0 : entity is "ctrl_io_exp,Vivado 2020.1";
end top_bd_ctrl_io_exp_1_0;

architecture STRUCTURE of top_bd_ctrl_io_exp_1_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^w_data\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute x_interface_parameter of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  w_data(31) <= \<const0>\;
  w_data(30) <= \^w_data\(30);
  w_data(29) <= \<const0>\;
  w_data(28) <= \<const0>\;
  w_data(27) <= \<const0>\;
  w_data(26) <= \^w_data\(30);
  w_data(25) <= \<const0>\;
  w_data(24) <= \<const0>\;
  w_data(23) <= \<const0>\;
  w_data(22) <= \<const0>\;
  w_data(21) <= \<const0>\;
  w_data(20) <= \^w_data\(18);
  w_data(19) <= \<const0>\;
  w_data(18) <= \^w_data\(18);
  w_data(17) <= \<const0>\;
  w_data(16) <= \<const0>\;
  w_data(15 downto 0) <= \^w_data\(15 downto 0);
  w_valid <= \^w_data\(30);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.top_bd_ctrl_io_exp_1_0_ctrl_io_exp
     port map (
      clk => clk,
      leds_state(15 downto 0) => leds_state(15 downto 0),
      r_ready => r_ready,
      rstn => rstn,
      w_data(17) => \^w_data\(30),
      w_data(16) => \^w_data\(18),
      w_data(15 downto 0) => \^w_data\(15 downto 0),
      w_ready => w_ready
    );
end STRUCTURE;
