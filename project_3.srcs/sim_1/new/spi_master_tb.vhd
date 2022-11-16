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

entity spi_master_tb is
end spi_master_tb;

architecture Behavioral of spi_master_tb is

component spi_master

generic
    (
    --il faut mettre C_LENGTH_ADDR et C_LENGTH_DATA sous forme de std_logic vector
    C_LENGTH : integer := 16 -- 16 bytes per transmission
    --C_SPI_CPOL : in std_logic := '0'; -- clock polarity
    --C_SPI_CPHA : in std_logic := '0' -- clock phase
    );
port 
    (
--controller interface
    rstn            : in    std_logic ;
    clk             : in    std_logic;
    --no need anymore to r_wn I guess, because we have only one state named "data"
    --r_wn            : in    std_logic; --read write
    
    
    -- p.s. : la valeur du r_wn se trouve aussi dans le dernier bit de l'adresse du slave
    -- il faudra peut-être la déduire de là au lieu de considérer que c'est une entrée
    -- du controleur 
    --mais ceci se passe au niveau du séquenceur 
            
    ---------Axi lite protocol-------------
    --simplified version of the Axi lite protocol
    --Data and adress are written/read on the same register
    --only 6 signals are necessary
    
    w_valid         : in    std_logic; 
    w_ready           : out   std_logic := '0';
    r_ready           : in   std_logic := '0';
    r_valid         : out   std_logic := '0'; 
    r_data     : out   std_logic_vector(C_LENGTH - 1 downto 0) := (others => '0'); 
    w_data     : in    std_logic_vector(C_LENGTH - 1 downto 0); 
    
    --spi interface
    spi_miso        : in    std_logic;          -- master input slave ouput
    spi_mosi        : out   std_logic := '1';   -- master output slave input
    spi_clk         : out   std_logic := '0';   -- clock
    spi_csn         : out   std_logic := '1'    -- chip select

    );
end component;

--signals to test
    signal rstn      :          std_logic ;
    signal clk        :         std_logic;
    signal w_valid     :        std_logic; 
    signal w_ready      :      std_logic := '0';
    signal r_ready       :     std_logic := '0';
    signal r_valid      :      std_logic := '0'; 
    signal r_data       : std_logic_vector(16 - 1 downto 0) := (others => '0'); 
    signal w_data       :  std_logic_vector(16 - 1 downto 0):= x"6648"; 
    
    --spi interface
    signal spi_miso      : std_logic := '0';          -- master input slave ouput
    signal spi_mosi     : std_logic := '1';   -- master output slave input
    signal spi_clk       :std_logic := '0';   -- clock
    signal spi_csn      : std_logic := '1';    -- chip select

begin

--instancition des components

dut1 : spi_master port map
(
rstn => rstn,
clk => clk, 

w_valid => w_valid, 
w_ready => w_ready,      
r_ready => r_ready,      
r_valid => r_valid,      
r_data  => r_data,
w_data  => w_data,
    
spi_miso => spi_miso, 
spi_mosi => spi_mosi, 
spi_clk => spi_clk,
spi_csn => spi_csn
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

----read
--    begin     --controller interface
--    wait for 1us;
--    rstn <= '1';
--    r_wn <= '1'; 
--    wait for 4us;
--    t_valid <= '1';
--    t_ready <= '1';
--    wait for 150us;
--    spi_miso <= '1';
--    wait for 4us;
--    spi_miso <= '0';
--    wait for 4us;
--    spi_miso <= '1'; 
--    wait for 16us;
--    spi_miso <= '0'; 
--    wait for 8us;
--    spi_miso <= '1';
--    wait for 4us;
--    spi_miso <= '0';
--    wait for 20us;
--    spi_miso <= '1';
--    wait for 4us;
--    spi_miso <= '0';
--    wait for 500us;
--    rstn <= '0';

--write
    begin     
    rstn <= '0';
    wait for 5ns;
    rstn <= '1';
    wait for 5ns;
    w_valid <= '1';
    r_ready <= '1';
    wait for 4900ns;
    --spi_miso = 1000111000110100
    spi_miso <= '1';
    wait for 2us;
    spi_miso <= '0';
    wait for 6us;
    spi_miso <= '1';
    wait for 4us;
    spi_miso <= '1';
    wait for 2us;
    spi_miso <= '0';
    wait for 6us;
    spi_miso <= '1';
    wait for 4us;
    spi_miso <= '0';
    wait for 2us;
    spi_miso <= '1';
    wait for 2us;
    spi_miso <= '0';
    wait for 42090ns;
    rstn <= '0';
    wait for 500us;


    
end process;
end Behavioral;
