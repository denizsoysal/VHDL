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

entity sequencer_tb is
end sequencer_tb;

architecture Behavioral of sequencer_tb is

component sequencer

 
    Generic(
    
    C_LENGTH           : integer range 0 to 255 := 12; -- length of ADC communication
    C_AIN_NUMBER       : integer range 0 to 255 := 10; -- number of AIN of the ADC
    
    --values calculated with the file values_ADC.xlsx
    
    C_5V_MIN : std_logic_vector(11 downto 0) := x"C5E";
    C_5V_MAX : std_logic_vector(11 downto 0) := x"DAB";
    C_3V3_MIN : std_logic_vector(11 downto 0) := x"C3E";
    C_3V3_MAX : std_logic_vector(11 downto 0) := x"D88";
    C_1V8_MIN : std_logic_vector(11 downto 0) := x"D5B";
    C_1V8_MAX : std_logic_vector(11 downto 0) := x"EC3";
    C_1V2_MIN : std_logic_vector(11 downto 0) := x"8E7";
    C_1V2_MAX : std_logic_vector(11 downto 0) := x"9D7";
    C_1V0_MIN : std_logic_vector(11 downto 0) := x"76B";
    C_1V0_MAX : std_logic_vector(11 downto 0) := x"833";
    C_VBAT_MIN : std_logic_vector(11 downto 0) := x"9E4";
    C_VBAT_MAX : std_logic_vector(11 downto 0) := x"AEE";
    C_VCORE_MIN : std_logic_vector(11 downto 0) := x"76B";
    C_VCORE_MAX : std_logic_vector(11 downto 0) := x"833";
    C_VDIMM_MIN : std_logic_vector(11 downto 0) := x"A04";
    C_VDIMM_MAX : std_logic_vector(11 downto 0) := x"B12";
    C_VDIMM_VTT_MIN : std_logic_vector(11 downto 0) := x"502";
    C_VDIMM_VTT_MAX : std_logic_vector(11 downto 0) := x"589";

    
    
    --power supply sequence parameters
     
    --timings for the power supply sequence
    --clock is 1 MHz : period of rising edge is 1µs
    C_SEQ_1V0_TO_3V3 : integer range 0 to 220 := 10; --10µs
    C_SEQ_3V3_TO_1V8: integer range 0 to 220 := 10; --10µs
    C_SEQ_1V8_TO_1V2: integer range 0 to 220 := 10; --10µs
    C_SEQ_1V2_TO_VCORE: integer range 0 to 220 := 10; --10µs
    C_SEQ_VCORE_TO_VDIMM: integer range 0 to 220 := 10; --10µs
    C_SEQ_VDIMM_TO_PORESET: integer range 0 to 85000  := 10 --4.04ms
    
    
    );
    Port (
   
   
   -- input EN et PG
   
    en_5v : in std_logic;
    pg_5v :in std_logic; --this signal correspond to 2 values : pg_5v and en_1v0
    pg_1V0: in std_logic;
    pg_3V3: in std_logic;
    pg_1V8: in std_logic;
    pg_1V2: in std_logic;
    pg_vcore: in std_logic;
    pg_vdimm: in std_logic;
    pg_poreset : in std_logic;
    
    
    rstn            : in std_logic;
    clk             : in std_logic;
    --clk_fast        : in std_logic; -- 100Mhz clock generated with PLL
    

    
    --leds enables
    en_led0         : out std_logic := '1'; --à voir comment on défini les enables leds
    en_led1         : out std_logic := '1';
    
    
    clk_slow   : out std_logic;
    
    value_3V3 : in std_logic_vector(C_LENGTH - 1 downto 0) ; 
    value_1V0 : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_1V8 : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_5V : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_VBAT : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_I_VMECPU : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_VDIMM_VTT : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_VDIMM : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_1V2 : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_VCORE : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    
    cnt_SEQ_1V0_TO_3V3_for_ILA : out std_logic_vector(7 downto 0);
    cnt_SEQ_1V8_TO_1V2_for_ILA : out std_logic_vector(7 downto 0);
    cnt_SEQ_1V2_TO_VCORE_for_ILA : out std_logic_vector(7 downto 0);
    cnt_SEQ_VCORE_TO_VDIMM_for_ILA : out std_logic_vector(7 downto 0);
    cnt_SEQ_3V3_TO_1V8_for_ILA : out std_logic_vector(7 downto 0);
    cnt_SEQ_VDIMM_TO_PORESET_for_ILA  : out std_logic_vector(7 downto 0);
    
    test_results : out std_logic_vector(24 downto 0):= (others => '0'); 
    test_done : out std_logic_vector(24 downto 0) := (others => '0');
    
    board_started : in std_logic;
    
    seq_result_for_ILA : out std_logic_vector(5 downto 0):= (others => '0')


    
    --clk mux measurement
--    TST_CLK_S0 : out std_logic;
--    TST_CLK_S1 : out std_logic;
--    TST_CLK_S2 : out std_logic;
--    CLOCK_OUT : in std_logic

);
end component;
--signals to test

   -- input EN et PG
   
    signal en_5v :  std_logic;
signal    pg_5v : std_logic; --this signal correspond to 2 values : pg_5v and en_1v0
  signal  pg_1V0:  std_logic;
  signal  pg_3V3:  std_logic;
  signal  pg_1V8:  std_logic;
  signal  pg_1V2:  std_logic;
  signal  pg_vcore:  std_logic;
  signal  pg_vdimm:  std_logic;
  signal  pg_poreset :  std_logic;
    
    
 signal   rstn            :  std_logic;
  signal  clk             :  std_logic;
    --clk_fast        : in std_logic; -- 100Mhz clock generated with PLL
    
   signal en_led0         :  std_logic := '1'; --à voir comment on défini les enables leds
   signal en_led1         :  std_logic := '1';
    
   signal     value_3V3 :  std_logic_vector(12 - 1 downto 0) ; 
 signal   value_1V0 :  std_logic_vector(12 - 1 downto 0) ;
  signal  value_1V8 :  std_logic_vector(12 - 1 downto 0) ;
  signal  value_5V :  std_logic_vector(12 - 1 downto 0) ;
  signal  value_VBAT :  std_logic_vector(12 - 1 downto 0) ;
  signal  value_I_VMECPU :  std_logic_vector(12 - 1 downto 0) ;
 signal   value_VDIMM_VTT :  std_logic_vector(12 - 1 downto 0) ;
  signal  value_VDIMM :  std_logic_vector(12 - 1 downto 0) ;
 signal   value_1V2 :  std_logic_vector(12 - 1 downto 0) ;
  signal  value_VCORE :  std_logic_vector(12 - 1 downto 0) ;
    
    
   signal clk_slow   :  std_logic;
    

    
    
 signal   test_results :  std_logic_vector(24 downto 0):= (others => '0'); 
 signal   test_done :  std_logic_vector(24 downto 0) := (others => '0');
    
 signal   board_started :  std_logic;
 
   signal  seq_result_for_ILA :  std_logic_vector(5 downto 0):= (others => '0');

   
     signal  cnt_SEQ_1V0_TO_3V3_for_ILA :  std_logic_vector(7 downto 0);
   signal cnt_SEQ_1V8_TO_1V2_for_ILA :  std_logic_vector(7 downto 0);
   signal cnt_SEQ_1V2_TO_VCORE_for_ILA :  std_logic_vector(7 downto 0);
   signal cnt_SEQ_VCORE_TO_VDIMM_for_ILA :  std_logic_vector(7 downto 0);
   signal cnt_SEQ_3V3_TO_1V8_for_ILA :  std_logic_vector(7 downto 0);
   signal cnt_SEQ_VDIMM_TO_PORESET_for_ILA  :  std_logic_vector(7 downto 0);
begin

--instancition des components
dut1 : sequencer port map
(
 en_5v => en_5v,
 pg_5v => pg_5v,    
 pg_1V0 => pg_1V0,
 pg_3V3  =>pg_3V3,
 pg_1V8 => pg_1V8,
        value_3V3 =>  value_3V3,
    value_1V0 =>  value_1V0  ,
    value_1V8  =>  value_1V8,
    value_5V  =>  value_5V,
    value_VBAT  =>  value_VBAT,
    value_I_VMECPU =>   value_I_VMECPU,
    value_VDIMM_VTT  =>  value_VDIMM_VTT,
    value_VDIMM  =>  value_VDIMM,
    value_1V2   => value_1V2,
    value_VCORE  =>  value_VCORE,
 pg_1V2 => pg_1V2,
 pg_vcore => pg_vcore,
 pg_vdimm => pg_vdimm,
 pg_poreset => pg_poreset,
rstn   =>rstn,         
 clk  => clk,     
 en_led0  =>  en_led0 ,     
 en_led1  => en_led1  ,      
 clk_slow =>  clk_slow,
 test_results => test_results ,
 test_done =>  test_done,
 board_started=>  board_started,
 
seq_result_for_ILA =>seq_result_for_ILA,
 cnt_SEQ_3V3_TO_1V8_for_ILA =>cnt_SEQ_3V3_TO_1V8_for_ILA,
 cnt_SEQ_VDIMM_TO_PORESET_for_ILA  =>cnt_SEQ_VDIMM_TO_PORESET_for_ILA,
 
    
   cnt_SEQ_1V0_TO_3V3_for_ILA =>cnt_SEQ_1V0_TO_3V3_for_ILA,
    cnt_SEQ_1V8_TO_1V2_for_ILA =>cnt_SEQ_1V8_TO_1V2_for_ILA,
    cnt_SEQ_1V2_TO_VCORE_for_ILA =>cnt_SEQ_1V2_TO_VCORE_for_ILA,
    cnt_SEQ_VCORE_TO_VDIMM_for_ILA =>cnt_SEQ_VCORE_TO_VDIMM_for_ILA
);

-- Generate the clk
process 
	begin
		 clk <= '0';
		 wait for 25 ns;
		 clk <= '1';
		 wait for 25 ns;
end process;



--stimuli
----Test of ADC Process
--process

--    begin
--    rstn <= '0';    
--    wait for 1us;
--    rstn <= '1';
--    wait for 1us;
--    value_3V3 <= x"FFF";
--    value_1V0 <= x"FFF";
--    value_1V8 <= x"FFF";
--    value_5V <= x"FFF";
--    value_VBAT <= x"FFF";
--    value_I_VMECPU <= x"FFF";
--    value_VDIMM_VTT <= x"FFF";
--    value_VDIMM <= x"FFF";
--    value_1V2 <= x"FFF";
--    value_VCORE   <= x"FFF";
--    wait for 20us;
--    value_3V3 <= x"CE3";
--    value_1V0 <= x"7CF";
--    value_1V8 <= x"E0F";
--    value_5V <= x"D05";
--    value_VBAT <= x"A69";
--    value_I_VMECPU <= x"FFF";
--    value_VDIMM_VTT <= x"4F5";
--    value_VDIMM <= x"A8B";
--    value_1V2 <= x"95F";
--    value_VCORE   <= x"7CF";
--    wait for 50us;
--    value_3V3 <= x"FFF";
--    value_1V0 <= x"FFF";
--    value_1V8 <= x"FFF";
--    value_5V <= x"FFF";
--    value_VBAT <= x"FFF";
--    value_I_VMECPU <= x"FFF";
--    value_VDIMM_VTT <= x"FFF";
--    value_VDIMM <= x"FFF";
--    value_1V2 <= x"FFF";
--    value_VCORE   <= x"FFF";
--end process;

--Test of Power Sequence
process

begin
rstn <= '0';    
wait for 1us;
rstn <= '1';
wait for 1us;
board_started <= '1';
wait for 5us;
pg_5v <= '1';
wait for 11us;
pg_1V0 <= '1';
wait for 11us;
pg_3V3 <= '1';
wait for 11us;
pg_1V8 <= '1';
wait for 11us;
pg_1V2 <= '1';
wait for 11us;
pg_vcore <= '1';
wait for 11us;
pg_vcore <= '1';
wait for 11us;
pg_vdimm <= '1';
wait for 11us;
pg_poreset <= '1';
wait;
end process;


end Behavioral;
