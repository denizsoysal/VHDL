-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:leds_display:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY top_bd_leds_display_0_0 IS
  PORT (
    rstn : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    test_done : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
    test_results : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
    clk_slow : IN STD_LOGIC;
    io_exp_0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    io_exp_1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    board_started : IN STD_LOGIC;
    sw_not_programmed : IN STD_LOGIC;
    shut_down : IN STD_LOGIC
  );
END top_bd_leds_display_0_0;

ARCHITECTURE top_bd_leds_display_0_0_arch OF top_bd_leds_display_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_bd_leds_display_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT leds_display IS
    PORT (
      rstn : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      test_done : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
      test_results : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
      clk_slow : IN STD_LOGIC;
      io_exp_0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      io_exp_1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      board_started : IN STD_LOGIC;
      sw_not_programmed : IN STD_LOGIC;
      shut_down : IN STD_LOGIC
    );
  END COMPONENT leds_display;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF top_bd_leds_display_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rstn: SIGNAL IS "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rstn: SIGNAL IS "xilinx.com:signal:reset:1.0 rstn RST";
BEGIN
  U0 : leds_display
    PORT MAP (
      rstn => rstn,
      clk => clk,
      test_done => test_done,
      test_results => test_results,
      clk_slow => clk_slow,
      io_exp_0 => io_exp_0,
      io_exp_1 => io_exp_1,
      board_started => board_started,
      sw_not_programmed => sw_not_programmed,
      shut_down => shut_down
    );
END top_bd_leds_display_0_0_arch;
