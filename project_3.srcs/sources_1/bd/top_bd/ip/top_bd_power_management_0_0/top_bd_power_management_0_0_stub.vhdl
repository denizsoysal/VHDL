-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Jun 16 14:50:43 2021
-- Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_power_management_0_0/top_bd_power_management_0_0_stub.vhdl
-- Design      : top_bd_power_management_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_bd_power_management_0_0 is
  Port ( 
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

end top_bd_power_management_0_0;

architecture stub of top_bd_power_management_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rstn,clk,value_5V[11:0],value_I_VMECPU[11:0],IOV_VMECPU,board_started,PG_PWR_5V,EN_PWR_5V,start_btnn,testing_bit,ready_bit,shut_down";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "power_management,Vivado 2020.1";
begin
end;
