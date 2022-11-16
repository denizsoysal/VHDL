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

entity leds_display_tb is
end leds_display_tb;

architecture Behavioral of leds_display_tb is

component leds_display


    Port (
   
       
      rstn            : in std_logic;
      clk             : in std_logic;
        
      test_done : in std_logic_vector(24 downto 0);
      test_results : in std_logic_vector(24 downto 0);
     
      clk_slow      : in std_logic;
      
      io_exp_0 : out std_logic_vector(15 downto 0);
      io_exp_1 : out std_logic_vector(15 downto 0)

);
end component;
--signals to test
signal     rstn            : std_logic;
 signal     clk             :  std_logic;
        
signal    test_done :  std_logic_vector(24 downto 0);
signal    test_results :  std_logic_vector(24 downto 0);
     
signal   clk_slow      :  std_logic;
      
signal    io_exp_0 :  std_logic_vector(15 downto 0);
signal      io_exp_1 :  std_logic_vector(15 downto 0);

begin

--instancition des components
dut1 : leds_display port map
(
rstn =>  rstn ,
clk =>   clk   ,     

test_done =>test_done,
test_results =>test_results,

clk_slow =>   clk_slow  ,
io_exp_0=> io_exp_0,
io_exp_1=> io_exp_1
);

-- Generate the clk slow
process 
	begin
		 clk_slow <= '0';
		 wait for 1 us;
		 clk_slow <= '1';
		 wait for 1 us;
end process;

-- Generate the clk 
process 
	begin
		 clk <= '0';
		 wait for 0.1 us;
		 clk <= '1';
		 wait for 0.1 us;
end process;


--stimuli
process

    begin    
    wait for 0.1us;
    rstn <= '1';
    wait for 0.1us;
    test_done    <= b"0000000000000000000000000";
    test_results <= b"0000000000000000000000000";
    wait for 10us;
    test_done    <= b"0000000000000000000000000";
    test_results <= b"0000000000000011111100000";
    wait for 50us;
    test_done    <= b"0000000000000011111100000";
    test_results <= b"0000000000000011111100000";
    wait for 50us;
end process;
end Behavioral;
