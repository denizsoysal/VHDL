library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

library xil_defaultlib;
use xil_defaultlib.ALL;

entity top_bd_wrapper_tb is

end top_bd_wrapper_tb;

architecture Behavioral of top_bd_wrapper_tb is

signal    ADC_eoc :  STD_LOGIC;
 signal   EN_PWR_5V :  STD_LOGIC;
 signal   IOV_VMECPU_0 :  STD_LOGIC;
 signal   PG_PWR_5V_0 :  STD_LOGIC;
 signal   clk_ref :  STD_LOGIC;
 signal   en_5v :  STD_LOGIC;
 signal   en_led0 :  STD_LOGIC;
 signal   en_led1 :  STD_LOGIC;
 signal   pg_1V0 :  STD_LOGIC;
 signal   pg_1V2 :  STD_LOGIC;
 signal   pg_1V8 :  STD_LOGIC;
 signal   pg_3V3 :  STD_LOGIC;
 signal   pg_5v :  STD_LOGIC;
 signal   pg_poreset :  STD_LOGIC;
 signal   pg_vcore :  STD_LOGIC;
 signal   pg_vdimm :  STD_LOGIC;
 signal   rstn :  STD_LOGIC;
 signal   spi_clk :  STD_LOGIC;
 signal   spi_clk_0 :  STD_LOGIC;
 signal   spi_clk_1 :  STD_LOGIC;
 signal   spi_csn :  STD_LOGIC;
 signal   spi_csn_0 :  STD_LOGIC;
 signal   spi_csn_1 :  STD_LOGIC;
 signal   spi_miso :  STD_LOGIC;
 signal   spi_miso_0 :  STD_LOGIC;
 signal   spi_miso_1 :  STD_LOGIC;
 signal   spi_mosi :  STD_LOGIC;
 signal   spi_mosi_0 :  STD_LOGIC;
 signal   spi_mosi_1 :  STD_LOGIC;
 signal   start_btnn_0 :  STD_LOGIC;
 
 signal    TST_CLK_S0_0 :  STD_LOGIC;
 signal        TST_CLK_S1_0 :  STD_LOGIC;
 signal       TST_CLK_S2_0:  STD_LOGIC; 
 signal       CLOCK_OUT_0 :  STD_LOGIC;

constant C_T_CLK    : time := 50 ns; -- 20.00MHZ

begin

UUT: entity xil_defaultlib.top_bd_wrapper
    port map(
        clk_ref     => clk_ref,        
        spi_clk     => spi_clk,
        spi_csn     => spi_csn,
        spi_miso    => spi_miso,
        spi_mosi    => spi_mosi,
        
        spi_clk_0     => spi_clk_0,
        spi_csn_0     => spi_csn_0,
        spi_miso_0    => spi_miso_0,
        spi_mosi_0    => spi_mosi_0,
        adc_eoc       => adc_eoc,
        
        spi_clk_1    => spi_clk_1,
        spi_csn_1    => spi_csn_1,
        spi_miso_1    => spi_miso_1,
        spi_mosi_1    => spi_mosi_1,

        en_led0     => en_led0,
        en_led1     => en_led1,
        
        rstn => rstn,
        start_btnn_0 => start_btnn_0,
        
         en_5v => en_5v,
         pg_5v => pg_5v,    
         pg_1V0 => pg_1V0,
         pg_3V3  =>pg_3V3,
         pg_1V8 => pg_1V8,
         pg_1V2 => pg_1V2,
         pg_vcore => pg_vcore,
         pg_vdimm => pg_vdimm,
         pg_poreset => pg_poreset,
         
         PG_PWR_5V_0 => PG_PWR_5V_0,
         IOV_VMECPU_0 => IOV_VMECPU_0,
         EN_PWR_5V => EN_PWR_5V,
         
         TST_CLK_S0_0 => TST_CLK_S0_0,
         TST_CLK_S1_0 => TST_CLK_S1_0,
         TST_CLK_S2_0 => TST_CLK_S2_0,
         CLOCK_OUT_0 =>  CLOCK_OUT_0
    );

-- Clock process definitions
clk_process: process
begin
    clk_ref <= '0';
    wait for C_T_CLK/2;
    clk_ref <= '1';
    wait for C_T_CLK/2;
end process;

CLOCK_OUT_0_proces: process
begin
    CLOCK_OUT_0 <= '0';
    wait for 20ns;
    CLOCK_OUT_0 <= '1';
    wait for 20ns;
end process;


--test of the ADC process 
process
begin     
    ADC_eoc <= '1';
    spi_miso_0 <= '0';
    rstn <= '0';
    wait for 1 us;
    rstn <= '1';
    wait for 1 us;
    start_btnn_0 <= '0';
    wait for 20 us;
    spi_miso_0 <= '1';
    wait for 4 us;
    spi_miso_0 <= '0';
    spi_miso_0 <= '1';
    wait for 2 us;
    spi_miso_0 <= '0';
    wait for 6.975 us;
    ADC_eoc <= '0';
    wait for 6 us;
    ADC_eoc <= '1';
    wait for 4.2us;
    wait for 2.1us;
    wait for 4.2us;
    ADC_eoc <= '1';
    wait for 5us;
    ADC_eoc <= '0';
    wait for 2.1us;
    ADC_eoc <= '1';
    wait for 50ms;
    
    
end process;

--test of the Power Sequence 

end Behavioral;
