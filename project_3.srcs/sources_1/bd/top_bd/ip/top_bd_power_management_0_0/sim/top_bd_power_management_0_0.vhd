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

-- IP VLNV: xilinx.com:module_ref:power_management:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY top_bd_power_management_0_0 IS
  PORT (
    rstn : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    value_5V : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    value_I_VMECPU : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    IOV_VMECPU : IN STD_LOGIC;
    board_started : OUT STD_LOGIC;
    PG_PWR_5V : IN STD_LOGIC;
    EN_PWR_5V : OUT STD_LOGIC;
    start_btnn : IN STD_LOGIC;
    testing_bit : OUT STD_LOGIC;
    ready_bit : OUT STD_LOGIC;
    shut_down : OUT STD_LOGIC
  );
END top_bd_power_management_0_0;

ARCHITECTURE top_bd_power_management_0_0_arch OF top_bd_power_management_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_bd_power_management_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT power_management IS
    GENERIC (
      C_LENGTH : INTEGER;
      C_5V_MIN_POWER_ON : STD_LOGIC_VECTOR(11 DOWNTO 0);
      C_I_VMECPU_MAX : STD_LOGIC_VECTOR(11 DOWNTO 0)
    );
    PORT (
      rstn : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      value_5V : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      value_I_VMECPU : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      IOV_VMECPU : IN STD_LOGIC;
      board_started : OUT STD_LOGIC;
      PG_PWR_5V : IN STD_LOGIC;
      EN_PWR_5V : OUT STD_LOGIC;
      start_btnn : IN STD_LOGIC;
      testing_bit : OUT STD_LOGIC;
      ready_bit : OUT STD_LOGIC;
      shut_down : OUT STD_LOGIC
    );
  END COMPONENT power_management;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF top_bd_power_management_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rstn: SIGNAL IS "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rstn: SIGNAL IS "xilinx.com:signal:reset:1.0 rstn RST";
BEGIN
  U0 : power_management
    GENERIC MAP (
      C_LENGTH => 12,
      C_5V_MIN_POWER_ON => X"BCB",
      C_I_VMECPU_MAX => X"FFF"
    )
    PORT MAP (
      rstn => rstn,
      clk => clk,
      value_5V => value_5V,
      value_I_VMECPU => value_I_VMECPU,
      IOV_VMECPU => IOV_VMECPU,
      board_started => board_started,
      PG_PWR_5V => PG_PWR_5V,
      EN_PWR_5V => EN_PWR_5V,
      start_btnn => start_btnn,
      testing_bit => testing_bit,
      ready_bit => ready_bit,
      shut_down => shut_down
    );
END top_bd_power_management_0_0_arch;
