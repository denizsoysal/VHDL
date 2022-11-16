-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Jun 16 14:26:25 2021
-- Host        : Laptop-de-Deniz running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/deniz/Desktop/Genitek_stage_tfe/TFE/VHDL/version_stable/ICTBRD_last_version/project_3.srcs/sources_1/bd/top_bd/ip/top_bd_leds_display_0_0/top_bd_leds_display_0_0_stub.vhdl
-- Design      : top_bd_leds_display_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_bd_leds_display_0_0 is
  Port ( 
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

end top_bd_leds_display_0_0;

architecture stub of top_bd_leds_display_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rstn,clk,test_done[24:0],test_results[24:0],clk_slow,io_exp_0[15:0],io_exp_1[15:0],board_started,sw_not_programmed,shut_down";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "leds_display,Vivado 2020.1";
begin
end;
