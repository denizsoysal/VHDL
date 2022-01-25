-- Author : Deniz Soysal 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ctrl_adc_tb is
--  Port ( );
end ctrl_adc_tb;

architecture Behavioral of ctrl_adc_tb is

component ctrl_adc

generic(
    
        C_LENGTH           : integer range 0 to 255 := 12;
--        C_NUMBER_INPUT     : integer range 0 to 255 := 8;
        C_LENGTH_CONFIG    : integer range 0 to 255 := 8
        
    );
    port( 
        rstn            : in std_logic;
        clk             : in std_logic;
        ADC_eoc         : in std_logic;
                
        --sequencer - controller communication
        --first 4 bits : config, last 4 bits : select analog input
        
        
        AIN0_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN1_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN2_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN3_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN4_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN5_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN6_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN7_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN8_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN9_value : out std_logic_vector(C_LENGTH - 1 downto 0);

        ---------Axi lite protocol, master ---------
        --simplified version of the Axi lite protocol
        --Data and adress are written/read on the same register
        --only 6 signals are necessary
        
        w_valid         : out    std_logic := '0'; 
        w_ready           : in   std_logic;
        r_ready           : out   std_logic := '0';
        r_valid         : in   std_logic ; 
        r_data     : in   std_logic_vector(C_LENGTH - 1 downto 0); 
        w_data     : out    std_logic_vector(C_LENGTH - 1 downto 0) := (others => '0') 
        
        
        
    
    );
end component;

--signals to test
signal rstn            :  std_logic;
signal clk             :  std_logic;
signal ADC_eoc         :  std_logic;
signal AIN0_value :  std_logic_vector(12 - 1 downto 0);
signal AIN1_value :  std_logic_vector(12 - 1 downto 0);
signal AIN2_value :  std_logic_vector(12 - 1 downto 0);
signal AIN3_value : std_logic_vector(12 - 1 downto 0);
signal AIN4_value :  std_logic_vector(12 - 1 downto 0);
signal AIN5_value :  std_logic_vector(12 - 1 downto 0);
signal AIN6_value :  std_logic_vector(12 - 1 downto 0);
signal AIN7_value :  std_logic_vector(12 - 1 downto 0);
signal AIN8_value :  std_logic_vector(12 - 1 downto 0);
signal AIN9_value :  std_logic_vector(12 - 1 downto 0);
signal w_valid         :     std_logic := '0'; 
signal w_ready           :    std_logic;
signal r_ready           :    std_logic := '0';
signal r_valid         :    std_logic ; 
signal r_data     :    std_logic_vector(12 - 1 downto 0); 
signal      w_data     :     std_logic_vector(12 - 1 downto 0) := (others => '0') ;

begin

--instancition des components

dut1 : ctrl_adc port map
(
rstn => rstn,           
clk  => clk,        
ADC_eoc => ADC_eoc,      
AIN0_value => AIN0_value,
AIN1_value => AIN1_value,
AIN2_value=> AIN2_value ,
AIN3_value => AIN3_value,
AIN4_value =>AIN4_value,
AIN5_value  =>AIN5_value,
AIN6_value => AIN6_value,
AIN7_value => AIN7_value,
AIN8_value=> AIN8_value,
AIN9_value =>AIN9_value,
w_valid  => w_valid ,    
w_ready  =>w_ready ,      
r_ready=> r_ready ,         
r_valid => r_valid , 
r_data   =>r_data,
w_data => w_data        
);

-- Generate the clk 20MHz
process 
	begin
		 clk <= '0';
		 wait for 25 ns;
		 clk <= '1';
		 wait for 25 ns;
		 
end process;

--stimuli

process
-- la config à envoyer est : 
-- SELECT analog input channel 3, X0: 12-bit output length, MSB first, Unipolar binary (voir datasheet)
-- donc : (voir datasheet)
-- 00110000
begin
    r_data <= b"100100100111";
    ADC_eoc <= '0';
    rstn            <= '0';
    wait for 1 ns;
    rstn            <= '1';
    wait for 5 us;
    ADC_eoc <= '1';
    wait for 5us;
    w_ready <= '1';
    wait for 20 us;
    w_ready <= '0';
    r_valid <= '1';
    ADC_eoc <= '0';
    wait for 50ms;
end process;
end behavioral;