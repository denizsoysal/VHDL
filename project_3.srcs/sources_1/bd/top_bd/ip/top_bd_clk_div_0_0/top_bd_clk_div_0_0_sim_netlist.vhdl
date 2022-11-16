-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Jun 16 11:20:02 2021
-- Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_clk_div_0_0/top_bd_clk_div_0_0_sim_netlist.vhdl
-- Design      : top_bd_clk_div_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_clk_div_0_0_clk_div is
  port (
    clk_out : out STD_LOGIC;
    clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_bd_clk_div_0_0_clk_div : entity is "clk_div";
end top_bd_clk_div_0_0_clk_div;

architecture STRUCTURE of top_bd_clk_div_0_0_clk_div is
  signal \^clk_out\ : STD_LOGIC;
  signal clk_out_i_i_1_n_0 : STD_LOGIC;
  signal clk_out_i_i_2_n_0 : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal cnt_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_out_i_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[4]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[7]_i_2\ : label is "soft_lutpair0";
begin
  clk_out <= \^clk_out\;
clk_out_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000010"
    )
        port map (
      I0 => clk_out_i_i_2_n_0,
      I1 => cnt(3),
      I2 => cnt(4),
      I3 => cnt(7),
      I4 => cnt(6),
      I5 => \^clk_out\,
      O => clk_out_i_i_1_n_0
    );
clk_out_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(0),
      I2 => cnt(5),
      I3 => cnt(2),
      O => clk_out_i_i_2_n_0
    );
clk_out_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => clk_out_i_i_1_n_0,
      Q => \^clk_out\,
      R => '0'
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      O => cnt_0(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(1),
      O => cnt_0(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFFB000"
    )
        port map (
      I0 => cnt(5),
      I1 => \cnt[4]_i_2_n_0\,
      I2 => cnt(0),
      I3 => cnt(1),
      I4 => cnt(2),
      O => cnt_0(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => cnt(3),
      I1 => cnt(0),
      I2 => cnt(1),
      I3 => cnt(2),
      O => cnt_0(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F00FF0F0F0D0D0"
    )
        port map (
      I0 => \cnt[4]_i_2_n_0\,
      I1 => cnt(5),
      I2 => cnt(4),
      I3 => cnt(3),
      I4 => \cnt[4]_i_3_n_0\,
      I5 => cnt(2),
      O => cnt_0(4)
    );
\cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => cnt(3),
      I1 => cnt(4),
      I2 => cnt(7),
      I3 => cnt(6),
      O => \cnt[4]_i_2_n_0\
    );
\cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(1),
      O => \cnt[4]_i_3_n_0\
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => cnt(5),
      I1 => cnt(4),
      I2 => cnt(3),
      I3 => cnt(0),
      I4 => cnt(1),
      I5 => cnt(2),
      O => cnt_0(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => cnt(6),
      I1 => \cnt[7]_i_2_n_0\,
      I2 => cnt(5),
      O => cnt_0(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => cnt(7),
      I1 => cnt(5),
      I2 => \cnt[7]_i_2_n_0\,
      I3 => cnt(6),
      O => cnt_0(7)
    );
\cnt[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(1),
      I2 => cnt(0),
      I3 => cnt(3),
      I4 => cnt(4),
      O => \cnt[7]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => cnt_0(0),
      Q => cnt(0),
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => cnt_0(1),
      Q => cnt(1),
      R => '0'
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => cnt_0(2),
      Q => cnt(2),
      R => '0'
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => cnt_0(3),
      Q => cnt(3),
      R => '0'
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => cnt_0(4),
      Q => cnt(4),
      R => '0'
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => cnt_0(5),
      Q => cnt(5),
      R => '0'
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => cnt_0(6),
      Q => cnt(6),
      R => '0'
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => cnt_0(7),
      Q => cnt(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_clk_div_0_0 is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_bd_clk_div_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_bd_clk_div_0_0 : entity is "top_bd_clk_div_0_0,clk_div,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_bd_clk_div_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_bd_clk_div_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_bd_clk_div_0_0 : entity is "clk_div,Vivado 2020.1";
end top_bd_clk_div_0_0;

architecture STRUCTURE of top_bd_clk_div_0_0 is
begin
U0: entity work.top_bd_clk_div_0_0_clk_div
     port map (
      clk_in => clk_in,
      clk_out => clk_out
    );
end STRUCTURE;
