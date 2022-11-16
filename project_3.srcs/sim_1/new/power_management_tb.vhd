----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.10.2020 15:17:47
-- Design Name: 
-- Module Name: tb_spi_master - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity power_management_tb is
end power_management_tb;

architecture Behavioral of power_management_tb is

component power_management

  generic (
  
  C_LENGTH           : integer range 0 to 255 := 12;
  C_SEQ_5V_MIN_VALUE : std_logic_vector(11 downto 0) := x"BCB"; --the power supply sequence begin when 5V > 4V53
  C_I_VMECPU_MAX     : std_logic_vector(11 downto 0) := x"F9F" --max current drawn : A DEFINIR !!!
  );
  
  Port ( 
  
  rstn            : in std_logic;
  clk             : in std_logic; 
  value_5V : in std_logic_vector(C_LENGTH - 1 downto 0);
  value_I_VMECPU : in std_logic_vector(C_LENGTH - 1 downto 0);
  
  board_started : out std_logic;
  EN_PWR_5V : out std_logic; --enable of power of DUT
  start_btnn      : in    std_logic
  
  
  

);
end component;
  signal rstn            :std_logic;
  signal clk             : std_logic; 
  signal value_5V :  std_logic_vector(12 - 1 downto 0);
  signal value_I_VMECPU :  std_logic_vector(12 - 1 downto 0);
  
  signal board_started :  std_logic;
  signal EN_PWR_5V :  std_logic; --enable of power of DUT
  signal start_btnn      :    std_logic;
  
begin

--instancition des components
dut1 : power_management port map
(
   rstn =>    rstn    , 
   clk   =>    clk   ,  
   value_5V => value_5V,
   value_I_VMECPU => value_I_VMECPU,
  
   board_started =>board_started,
   EN_PWR_5V=>EN_PWR_5V,
   start_btnn   =>   start_btnn
);

-- Generate the clk
process 
	begin
		 clk <= '0';
		 wait for 1 us;
		 clk <= '1';
		 wait for 1 us;
end process;

--stimuli

process

    begin    
    wait for 1us;
    rstn <= '1';
    wait for 1us;
    start_btnn <= '0';
    rstn <= '1';
    wait for 1 us; 
    start_btnn <= '1';
    wait for 5 us; 
    value_5V <= x"CCC";
    wait for 5 us;
    value_I_VMECPU <= x"FFF";

    
end process;
end Behavioral;
