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

-- IP VLNV: xilinx.com:module_ref:spi_master:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY top_bd_spi_master_1_0 IS
  PORT (
    rstn : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    w_valid : IN STD_LOGIC;
    w_ready : OUT STD_LOGIC;
    r_ready : IN STD_LOGIC;
    r_valid : OUT STD_LOGIC;
    r_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    w_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    spi_miso : IN STD_LOGIC;
    spi_mosi : OUT STD_LOGIC;
    spi_clk : OUT STD_LOGIC;
    spi_csn : OUT STD_LOGIC
  );
END top_bd_spi_master_1_0;

ARCHITECTURE top_bd_spi_master_1_0_arch OF top_bd_spi_master_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_bd_spi_master_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT spi_master IS
    GENERIC (
      C_LENGTH : INTEGER;
      C_SPI_CPOL : STD_LOGIC;
      C_SPI_CPHA : STD_LOGIC
    );
    PORT (
      rstn : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      w_valid : IN STD_LOGIC;
      w_ready : OUT STD_LOGIC;
      r_ready : IN STD_LOGIC;
      r_valid : OUT STD_LOGIC;
      r_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      w_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      spi_miso : IN STD_LOGIC;
      spi_mosi : OUT STD_LOGIC;
      spi_clk : OUT STD_LOGIC;
      spi_csn : OUT STD_LOGIC
    );
  END COMPONENT spi_master;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF top_bd_spi_master_1_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF spi_clk: SIGNAL IS "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN top_bd_spi_master_1_0_spi_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF spi_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 spi_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rstn: SIGNAL IS "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rstn: SIGNAL IS "xilinx.com:signal:reset:1.0 rstn RST";
BEGIN
  U0 : spi_master
    GENERIC MAP (
      C_LENGTH => 32,
      C_SPI_CPOL => '0',
      C_SPI_CPHA => '0'
    )
    PORT MAP (
      rstn => rstn,
      clk => clk,
      w_valid => w_valid,
      w_ready => w_ready,
      r_ready => r_ready,
      r_valid => r_valid,
      r_data => r_data,
      w_data => w_data,
      spi_miso => spi_miso,
      spi_mosi => spi_mosi,
      spi_clk => spi_clk,
      spi_csn => spi_csn
    );
END top_bd_spi_master_1_0_arch;