-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Jun 16 14:50:43 2021
-- Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_power_management_0_0/top_bd_power_management_0_0_sim_netlist.vhdl
-- Design      : top_bd_power_management_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_power_management_0_0_power_management is
  port (
    board_started : out STD_LOGIC;
    EN_PWR_5V : out STD_LOGIC;
    testing_bit : out STD_LOGIC;
    shut_down : out STD_LOGIC;
    ready_bit : out STD_LOGIC;
    value_5V : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    PG_PWR_5V : in STD_LOGIC;
    IOV_VMECPU : in STD_LOGIC;
    start_btnn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_bd_power_management_0_0_power_management : entity is "power_management";
end top_bd_power_management_0_0_power_management;

architecture STRUCTURE of top_bd_power_management_0_0_power_management is
  signal EN_PWR_5V_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_n_0_[1]\ : STD_LOGIC;
  signal board_started_i_1_n_0 : STD_LOGIC;
  signal board_started_i_2_n_0 : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ready_bit\ : STD_LOGIC;
  signal ready_bit_i_1_n_0 : STD_LOGIC;
  signal \^shut_down\ : STD_LOGIC;
  signal shut_down_i_1_n_0 : STD_LOGIC;
  signal start_btn : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal start_btn_com : STD_LOGIC;
  signal start_btn_com_b0 : STD_LOGIC;
  signal start_btn_com_i_1_n_0 : STD_LOGIC;
  signal start_btn_com_i_2_n_0 : STD_LOGIC;
  signal start_btn_com_i_3_n_0 : STD_LOGIC;
  signal start_btn_com_i_4_n_0 : STD_LOGIC;
  signal \start_btn_reg_n_0_[15]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^testing_bit\ : STD_LOGIC;
  signal testing_bit_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "s_idle:00,s_start_dut:01,s_dut_powered:10,s_dut_power_off:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "s_idle:00,s_start_dut:01,s_dut_powered:10,s_dut_power_off:11";
  attribute SOFT_HLUTNM of board_started_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of shut_down_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of testing_bit_i_1 : label is "soft_lutpair2";
begin
  ready_bit <= \^ready_bit\;
  shut_down <= \^shut_down\;
  testing_bit <= \^testing_bit\;
EN_PWR_5V_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state_reg_n_0_[1]\,
      O => EN_PWR_5V_i_1_n_0
    );
EN_PWR_5V_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => EN_PWR_5V_i_1_n_0,
      Q => EN_PWR_5V,
      R => board_started_i_1_n_0
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFFEEEEEEFEEE"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_state[0]_i_3_n_0\,
      I2 => \FSM_sequential_state[1]_i_3_n_0\,
      I3 => state(0),
      I4 => value_5V(8),
      I5 => \FSM_sequential_state[1]_i_2_n_0\,
      O => next_state(0)
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2A2A2A"
    )
        port map (
      I0 => state(0),
      I1 => PG_PWR_5V,
      I2 => value_5V(9),
      I3 => \FSM_sequential_state_reg_n_0_[1]\,
      I4 => IOV_VMECPU,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F002"
    )
        port map (
      I0 => start_btn_com_b0,
      I1 => start_btn_com,
      I2 => state(0),
      I3 => \FSM_sequential_state_reg_n_0_[1]\,
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000F100"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => value_5V(8),
      I3 => state(0),
      I4 => \FSM_sequential_state[1]_i_4_n_0\,
      I5 => \FSM_sequential_state_reg_n_0_[1]\,
      O => next_state(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => value_5V(5),
      I1 => value_5V(4),
      I2 => value_5V(7),
      I3 => value_5V(6),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => value_5V(1),
      I1 => value_5V(0),
      I2 => value_5V(3),
      I3 => value_5V(2),
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => PG_PWR_5V,
      I1 => value_5V(9),
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_state(0),
      Q => state(0),
      R => board_started_i_1_n_0
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_state(1),
      Q => \FSM_sequential_state_reg_n_0_[1]\,
      R => board_started_i_1_n_0
    );
board_started_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => board_started_i_1_n_0
    );
board_started_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[1]\,
      I1 => state(0),
      O => board_started_i_2_n_0
    );
board_started_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => board_started_i_2_n_0,
      Q => board_started,
      R => board_started_i_1_n_0
    );
ready_bit_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[1]\,
      I1 => rstn,
      I2 => \^ready_bit\,
      O => ready_bit_i_1_n_0
    );
ready_bit_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ready_bit_i_1_n_0,
      Q => \^ready_bit\,
      R => '0'
    );
shut_down_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state_reg_n_0_[1]\,
      I2 => rstn,
      I3 => \^shut_down\,
      O => shut_down_i_1_n_0
    );
shut_down_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shut_down_i_1_n_0,
      Q => \^shut_down\,
      R => '0'
    );
\start_btn[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start_btnn,
      O => p_1_out(0)
    );
start_btn_com_b0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn_com,
      Q => start_btn_com_b0,
      R => board_started_i_1_n_0
    );
start_btn_com_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => start_btn_com_i_2_n_0,
      I1 => start_btn_com_i_3_n_0,
      I2 => start_btn_com_i_4_n_0,
      I3 => rstn,
      I4 => start_btn_com,
      O => start_btn_com_i_1_n_0
    );
start_btn_com_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => start_btn(12),
      I1 => start_btn(13),
      I2 => start_btn(10),
      I3 => start_btn(11),
      I4 => \start_btn_reg_n_0_[15]\,
      I5 => start_btn(14),
      O => start_btn_com_i_2_n_0
    );
start_btn_com_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => start_btn(1),
      I1 => start_btn(0),
      I2 => start_btn(3),
      I3 => start_btn(2),
      O => start_btn_com_i_3_n_0
    );
start_btn_com_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => start_btn(6),
      I1 => start_btn(7),
      I2 => start_btn(4),
      I3 => start_btn(5),
      I4 => start_btn(9),
      I5 => start_btn(8),
      O => start_btn_com_i_4_n_0
    );
start_btn_com_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn_com_i_1_n_0,
      Q => start_btn_com,
      R => '0'
    );
\start_btn_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_out(0),
      Q => start_btn(0),
      R => board_started_i_1_n_0
    );
\start_btn_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn(9),
      Q => start_btn(10),
      R => board_started_i_1_n_0
    );
\start_btn_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn(10),
      Q => start_btn(11),
      R => board_started_i_1_n_0
    );
\start_btn_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn(11),
      Q => start_btn(12),
      R => board_started_i_1_n_0
    );
\start_btn_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn(12),
      Q => start_btn(13),
      R => board_started_i_1_n_0
    );
\start_btn_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn(13),
      Q => start_btn(14),
      R => board_started_i_1_n_0
    );
\start_btn_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn(14),
      Q => \start_btn_reg_n_0_[15]\,
      R => board_started_i_1_n_0
    );
\start_btn_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn(0),
      Q => start_btn(1),
      R => board_started_i_1_n_0
    );
\start_btn_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn(1),
      Q => start_btn(2),
      R => board_started_i_1_n_0
    );
\start_btn_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn(2),
      Q => start_btn(3),
      R => board_started_i_1_n_0
    );
\start_btn_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn(3),
      Q => start_btn(4),
      R => board_started_i_1_n_0
    );
\start_btn_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn(4),
      Q => start_btn(5),
      R => board_started_i_1_n_0
    );
\start_btn_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn(5),
      Q => start_btn(6),
      R => board_started_i_1_n_0
    );
\start_btn_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn(6),
      Q => start_btn(7),
      R => board_started_i_1_n_0
    );
\start_btn_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn(7),
      Q => start_btn(8),
      R => board_started_i_1_n_0
    );
\start_btn_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_btn(8),
      Q => start_btn(9),
      R => board_started_i_1_n_0
    );
testing_bit_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
        port map (
      I0 => state(0),
      I1 => rstn,
      I2 => \FSM_sequential_state_reg_n_0_[1]\,
      I3 => \^testing_bit\,
      O => testing_bit_i_1_n_0
    );
testing_bit_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => testing_bit_i_1_n_0,
      Q => \^testing_bit\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_power_management_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_bd_power_management_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_bd_power_management_0_0 : entity is "top_bd_power_management_0_0,power_management,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_bd_power_management_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_bd_power_management_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_bd_power_management_0_0 : entity is "power_management,Vivado 2020.1";
end top_bd_power_management_0_0;

architecture STRUCTURE of top_bd_power_management_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute x_interface_parameter of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.top_bd_power_management_0_0_power_management
     port map (
      EN_PWR_5V => EN_PWR_5V,
      IOV_VMECPU => IOV_VMECPU,
      PG_PWR_5V => PG_PWR_5V,
      board_started => board_started,
      clk => clk,
      ready_bit => ready_bit,
      rstn => rstn,
      shut_down => shut_down,
      start_btnn => start_btnn,
      testing_bit => testing_bit,
      value_5V(9 downto 0) => value_5V(11 downto 2)
    );
end STRUCTURE;
