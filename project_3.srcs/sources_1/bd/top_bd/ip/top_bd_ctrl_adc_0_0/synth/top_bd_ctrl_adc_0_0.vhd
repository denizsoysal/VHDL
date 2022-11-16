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

-- IP VLNV: xilinx.com:module_ref:ctrl_adc:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY top_bd_ctrl_adc_0_0 IS
  PORT (
    rstn : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    ADC_eoc : IN STD_LOGIC;
    AIN0_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    AIN1_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    AIN2_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    AIN3_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    AIN4_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    AIN5_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    AIN6_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    AIN7_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    AIN8_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    AIN9_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    w_valid : OUT STD_LOGIC;
    w_ready : IN STD_LOGIC;
    r_ready : OUT STD_LOGIC;
    r_valid : IN STD_LOGIC;
    r_data : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    w_data : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END top_bd_ctrl_adc_0_0;

ARCHITECTURE top_bd_ctrl_adc_0_0_arch OF top_bd_ctrl_adc_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_bd_ctrl_adc_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ctrl_adc IS
    GENERIC (
      C_LENGTH : INTEGER;
      C_LENGTH_CONFIG : INTEGER
    );
    PORT (
      rstn : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      ADC_eoc : IN STD_LOGIC;
      AIN0_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      AIN1_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      AIN2_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      AIN3_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      AIN4_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      AIN5_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      AIN6_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      AIN7_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      AIN8_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      AIN9_value : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      w_valid : OUT STD_LOGIC;
      w_ready : IN STD_LOGIC;
      r_ready : OUT STD_LOGIC;
      r_valid : IN STD_LOGIC;
      r_data : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      w_data : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
    );
  END COMPONENT ctrl_adc;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF top_bd_ctrl_adc_0_0_arch: ARCHITECTURE IS "ctrl_adc,Vivado 2020.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF top_bd_ctrl_adc_0_0_arch : ARCHITECTURE IS "top_bd_ctrl_adc_0_0,ctrl_adc,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF top_bd_ctrl_adc_0_0_arch: ARCHITECTURE IS "top_bd_ctrl_adc_0_0,ctrl_adc,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ctrl_adc,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,C_LENGTH=12,C_LENGTH_CONFIG=8}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF top_bd_ctrl_adc_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rstn: SIGNAL IS "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rstn: SIGNAL IS "xilinx.com:signal:reset:1.0 rstn RST";
BEGIN
  U0 : ctrl_adc
    GENERIC MAP (
      C_LENGTH => 12,
      C_LENGTH_CONFIG => 8
    )
    PORT MAP (
      rstn => rstn,
      clk => clk,
      ADC_eoc => ADC_eoc,
      AIN0_value => AIN0_value,
      AIN1_value => AIN1_value,
      AIN2_value => AIN2_value,
      AIN3_value => AIN3_value,
      AIN4_value => AIN4_value,
      AIN5_value => AIN5_value,
      AIN6_value => AIN6_value,
      AIN7_value => AIN7_value,
      AIN8_value => AIN8_value,
      AIN9_value => AIN9_value,
      w_valid => w_valid,
      w_ready => w_ready,
      r_ready => r_ready,
      r_valid => r_valid,
      r_data => r_data,
      w_data => w_data
    );
END top_bd_ctrl_adc_0_0_arch;
